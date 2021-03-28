/**
 *  tests a single export
 *  
 *  #args
 *  wasmPath    (path to the wasm file to be imported)
 *  exportName  (name of the export to test)
 *  outPath     (we save the test result to this file)
 *  index       (index in the args.json file)
 *  dryRun      (integer, if above 0, does a "dry" run of the measurement, where the execution of the function
 *              is replaced with a timeout, with a duration that matches the value of dryRun)
 * 
 *  this file spawns a worker, measures memory usage and outputs
 *  results into a file
 */

const fs = require('fs').promises;
const { Worker } = require('worker_threads');
import { BenchmarkArgs } from '../types';
import { WorkerResult, EnrichedWorkerResult, WorkerData, Snapshot } from './types'
const { performance } = require('perf_hooks');


const [ , , wasmPath, outPath, indexString, dryRunString] = process.argv;

const index = Number(indexString);
const dryRun = Number(dryRunString);

const log = (...s) => console.log('MASTER |', ...s);

log('args:', wasmPath, outPath, indexString, dryRunString);

const snapshots: Snapshot[] = [];

const addSnapshot = (() => {
    let start = -1;

    return () => {
        const now = performance.now(); 
        if(start === -1) start = now;
        
        snapshots.push({
            usage: process.memoryUsage(),
            elapsed: now - start
        })
    }
})();

;(async () => {

    const args: BenchmarkArgs = await fs.readFile('args.json').then(JSON.parse);
    const instantiationOptions = args.instantiationOptions;
    const exportArgs = args.exportArgs[index];
    const {inputs, exportName, interval } = exportArgs;

    log(`measuring ${exportName}@${interval}`)
    log('spawning worker...')

    // @ts-ignore
    gc();
    addSnapshot();

    const iid = setInterval(() => {
        addSnapshot();
    }, interval)

    const workerResults: WorkerResult = await new Promise((resolve, reject) => {
        
        const workerData: WorkerData = {
            wasmPath,
            exportName,
            inputs,
            dryRun,
            instantiationOptions
        }
        
        const worker = new Worker('./worker.js', {
            workerData
        });

        let out;
        
        worker.on('message', data => out = data)

        worker.on('exit', () => resolve(out));
    });

    clearInterval(iid);

    // @ts-ignore
    gc();
    addSnapshot();

    log('Worker finished, elapsed/result:', workerResults.executionDuration, workerResults.returnValue);
    
    const json: EnrichedWorkerResult = {
        ...workerResults,
        snapshots,
        inputs,
        exportName
    };

    log('writing results to file', outPath);

    await fs.writeFile(outPath, JSON.stringify(json));

})()

export {}