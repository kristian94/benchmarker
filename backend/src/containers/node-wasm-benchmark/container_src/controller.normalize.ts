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

const zip = (a, b) => new Array(a.length).fill(0).map((_, i) => [a[i], b[i]])

// stretch :: Mutates. Fits the array to the input length by adding/removing elements to/from the middle of the array.
// Adds new elements by copying the midmost element.
const stretch = (array: any[], length: number) => {
    
    // too short
    while(array.length < length){
        const i = Math.floor(array.length / 2);
        const x = array[i];
        array.splice(i, 0, x);
    }

    // too long
    while(array.length > length){
        const i = Math.floor(array.length / 2);
        array.splice(i, 1);
    }

    return array;
}

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

        const toMB = x => (x / 1024 / 1024).toFixed(1) + 'MB';

        stretch(dryResults.snapshots, results.snapshots.length)

        const maxFree = dryResults.snapshots.concat(results.snapshots)
            .map(x => x.osFreeMemory)
            .reduce((a, b) => Math.max(a, b), 0);

        const normalizedSnapshots = zip(results.snapshots, dryResults.snapshots)
            .map(x => {
                const [act, dry] = x;
                const diffOr0 =  (actObj, dryObj, prop) => Math.max(actObj[prop] - dryObj[prop], 0)

                const actFreeMemInv = Math.max(0, maxFree - act.osFreeMemory);
                const dryFreeMemInv = Math.max(0, maxFree - dry.osFreeMemory);

                return {
                    elapsed: act.elapsed,
                    usage: {
                        rss: diffOr0(act.usage, dry.usage, 'rss'),
                        heapTotal: diffOr0(act.usage, dry.usage, 'heapTotal'),
                        heapUsed: diffOr0(act.usage, dry.usage, 'heapUsed'),
                        external: diffOr0(act.usage, dry.usage, 'external'),
                        arrayBuffers: diffOr0(act.usage, dry.usage, 'arrayBuffers')
                    },
                    osFreeMemory: Math.max(0, actFreeMemInv - dryFreeMemInv),
                    bufferByteLength: act.bufferByteLength
                }
            })

        results.originalSnapshots = results.snapshots;
        results.snapshots = normalizedSnapshots;

        return results
    }))

    await fs.writeFile('results.json', JSON.stringify(exportResultsList));

})()

export {}