import { BenchmarkArgs } from "../types";
import { getLowerOutlierBound, getUpperOutlierBound, median, mode, standardDeviation } from "./stats";
import { AggregatedResult, EnrichedWorkerResult, Snapshot } from "./types";
import { promises as fs} from 'fs';
import { mean } from './stats'

const log = (...s) => console.log('CONTROLLER |', ...s)
const zeroPad = n => x => x.toString().length <= n ? x : zeroPad(n)('0' + x);
const { sequentialAsync } = require('./utils');
const { spawn } = require('child_process');

const cmdAsync = (...c: String[]) => new Promise((resolve) => {

    const process = spawn(c.shift(), c);

    process.stdout.on('data', (data) => log(data.toString()));

    process.stderr.on('data', (data) => log(data.toString()));

    process.on('close', resolve)
})

;(async () => {
    const args: BenchmarkArgs = await fs.readFile('args.json', {encoding: 'utf-8'}).then(JSON.parse);
    const wasmPath = './src/' + args.targetFile;
    const masterArgs = args.exportArgs.map((x, i) => [wasmPath, `results-${zeroPad(3)(i)}.json`, i, 0]);

    const results = await sequentialAsync(masterArgs.map(args => async () => {
        const [, resultsFile, i] = args;
        const iterations = 25;

        const {resultsList, outliers}: { resultsList: EnrichedWorkerResult[], outliers: number } = await sequentialAsync(new Array(iterations).fill(0).map((_, pos) => async () => {
            log(`Starting run ${pos + 1}/${iterations}...`)

            await cmdAsync('node', 
                '--experimental-wasm-threads', 
                'master', 
                ...args.map(x => x.toString()));

            return await fs.readFile(<string> resultsFile, {encoding: 'utf-8'}).then(JSON.parse);

        })).then((workerResults: EnrichedWorkerResult[]) => {
            workerResults.sort((a, b) => a.executionDuration - b.executionDuration);

            const getOutlierFilter = (prop) => {
                const values = workerResults.map(x => x[prop]);

                const lowerOutlierBound = getLowerOutlierBound(values);
                const upperOutlierBound = getUpperOutlierBound(values);

                return x => x[prop] >= lowerOutlierBound && x[prop] <= upperOutlierBound
            }

            const filtered = workerResults
                .filter(getOutlierFilter('executionDuration'))
                .filter(getOutlierFilter('maxRss'))
            
            return {
                resultsList: filtered,
                outliers: iterations - filtered.length
            }
        }); 

        log('rssStdDev (maxRSS):', standardDeviation(resultsList.map(x => x.maxRss)));

        const reducedResult: AggregatedResult = {
            inputs: resultsList[0].inputs,
            exportName: resultsList[0].exportName,
            returnValue: resultsList[0].returnValue,

            maxRss: resultsList.map(x => x.maxRss).reduce((a, b) => Math.max(a, b), 0),
            executionDuration: mean(resultsList.map(x => x.executionDuration)),
            snapshots: resultsList[0].snapshots,
            rssStdDev: standardDeviation(resultsList.map(x => x.maxRss)),
            durationrssStdDev: standardDeviation(resultsList.map(x => x.executionDuration)),
            outliers
        }
        
        return reducedResult;
    }))

    await fs.writeFile('results.json', JSON.stringify(results));

})();