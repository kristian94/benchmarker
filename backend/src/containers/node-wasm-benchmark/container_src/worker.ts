/**
 *  This file should:
 * 
 *  - run the input file function
 *  - message return value to master process
 *  
 */

const path = require('path');
const { workerData, parentPort } = require('worker_threads');
const { getWasmExports } = require('./wasm-importer');
const { performance } = require('perf_hooks');
import { WorkerResult, WorkerData } from './types'

const log = (...s) => console.log('WORKER |', ...s)

const { wasmPath, exportName, input, dryRun } = workerData as WorkerData;

const sleep = duration => new Promise(res => setTimeout(res, duration));

(async () => {

    const _exports = await (/.*?wasm$/.test(wasmPath)
            ? getWasmExports(wasmPath)
            : require(wasmPath))
    
    const before = performance.now();

    let returnValue;

    if(dryRun > 0){
        await sleep(dryRun).then(_ => null)
    }else{
        returnValue = _exports.__wasm[exportName](input);;
    }

    const after = performance.now();
    const executionDuration = after - before;

    const workerResult: WorkerResult = {
        executionDuration,
        returnValue
    }

    parentPort.postMessage(workerResult);

    parentPort.close();
})();

export {}