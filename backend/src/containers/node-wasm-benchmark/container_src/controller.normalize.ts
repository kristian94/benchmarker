/**
 *  this is an altered version of the controller file that utilizes normalization of snapshots. This
 *  is done by each test running twice: one time, as normally, and another "dry" run, that will invoke
 *  a timeout instead of the function under test (using the duration of the previous run as timeout 
 *  duration). The "dry" run is meant to measure noise: memory used by the node process and the objects
 *  supporting the measurement and execution process.
 * 
 *  The theory is that noise can be reduced by subtracting the "dry"/"noisy" measurement, from the 
 *  normal measurement, to produce a noise-free result.
 * 
 *  Testing this technique against the fibonacci function was not promising, as the noise reduction would
 *  somehow bring nearly all snapshots to 0. More testing will be needed.
 *  
 *  
 */

import { BenchmarkArgs } from "../types";
import { Snapshot } from "./types";

const fs =  require('fs').promises;

const log = (...s) => console.log('CONTROLLER |', ...s)
const zeroPad = n => x => x.toString().length <= n ? x : zeroPad(n)('0' + x);
const { sequentialAsync } = require('./utils');
const { spawn } = require('child_process');

const cmdAsync = (...c: String[]) => new Promise((resolve) => {

    const process = spawn(c.shift(), c);

    // deleteme
    process.stdout.on('data', (data) => log(data.toString()));

    process.stderr.on('data', (data) => log(data.toString()));
    // /deleteme

    process.on('close', resolve)
})

;(async () => {
    const args: BenchmarkArgs = await fs.readFile('args.json').then(JSON.parse);
    const wasmPath = './src/' + args.targetFile;

    // :: [] String[]
    const masterArgs = args.exportArgs.map((x, i) => 
        [wasmPath, `results-${zeroPad(3)(i)}.json`, i, 0]);

    const exportResultsList = await sequentialAsync(masterArgs.map(args => async () => {
        await cmdAsync('node', '--experimental-wasm-threads', '--expose-gc', 'master', ...args.map(x => x.toString()));

        const [, resultsFile, i] = args;

        const results = await fs.readFile(resultsFile).then(JSON.parse);

        const dryArgs = [wasmPath, `results-${zeroPad(3)(i)}.dry.json`, i, Math.round(results.executionDuration)]

        await cmdAsync('node', '--experimental-wasm-threads', '--expose-gc', 'master', ...dryArgs.map(x => x.toString()));

        const [, dryResultsFile] = dryArgs;

        const dryResults = await fs.readFile(dryResultsFile).then(JSON.parse);

        /**
         * we now have two result-objects: the actual and the dry
         * 
         * 1. We wish to combine the two snapshot arrays by subtracting every entry of the dry
         *    snapshots from the actual entry that shares its index. To accomplish this we need
         *    to ensure that the two arrays have the same amount of entries. As the information
         *    from the actual measurements are most important, we prefer to add/remove elements
         *    from the array of dry snapshots, and since we expect the snapshot array to be 
         *    relatively stable during the execution period, we prefer to manipulate it around 
         *    its middle, were elements should be very similar.
         *    
         *    If the dry array is too short:
         *      - find the midmost element: x = array[Math.floor(array.length / 2)]
         *      - add elements into the middle of the array: array.splice(Math.floor(array.length / 2), 0, x)
         *      - repeat while array is too short
         * 
         *    If it is too long:
         *      - array.splice(Math.floor(array.length / 2), 1)
         *      - repeat while array is too long
         *
         *  2. 
         *  
         */

        // log('dryResults:', dryResults);

        const {snapshots} = results;
        const {snapshots: drySnapshots} = dryResults;


        // too short
        while(dryResults.snapshots.length < results.snapshots.length){
            const i = Math.floor(drySnapshots.length / 2);
            const x = drySnapshots[i];
            drySnapshots.splice(i, 0, x);
        }

        // too long
        while(dryResults.snapshots.length > results.snapshots.length){
            const i = Math.floor(drySnapshots.length / 2);
            drySnapshots.splice(i, 1);
        }

        const normalizedSnapshots: Snapshot[] = [];

        for(let i = 0; i < snapshots.length; i++){
            const actual = snapshots[i];
            const dry = drySnapshots[i];

            const diffOr0 =  (prop) => Math.max(actual[prop] - dry[prop], 0)
            const usageDiffOr0 =  (prop) => Math.max(actual.usage[prop] - dry.usage[prop], 0)

            normalizedSnapshots[i] = {
                elapsed: actual.elapsed,
                usage: {
                    rss: usageDiffOr0('rss'),
                    heapTotal: usageDiffOr0('heapTotal'),
                    heapUsed: usageDiffOr0('heapUsed'),
                    external: usageDiffOr0('external'),
                    arrayBuffers: usageDiffOr0('arrayBuffers')
                },
                osFreeMemory: diffOr0('osFreeMemory')
            }
        }

        const toMB = x => (x.rss / 1024 / 1024).toFixed(1) + 'MB';

        // log('rss      :', snapshots.map(toMB));
        // log('rss (dry):', drySnapshots.map(toMB));

        // log('normalizedSnapshots:', normalizedSnapshots.map(toMB))

        results.originalSnapshots = results.snapshots;
        results.snapshots = normalizedSnapshots;

        return results
    }))

    await fs.writeFile('results.json', JSON.stringify(exportResultsList));

})()

export {}