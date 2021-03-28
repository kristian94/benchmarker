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

const { wasmPath, exportName, inputs, dryRun, instantiationOptions } = workerData as WorkerData;

const sleep = duration => new Promise(res => setTimeout(res, duration));

(async () => {

    log('instantiationOptions:', instantiationOptions)

    const wModule = await (/.*?wasm$/.test(wasmPath)
            ? getWasmExports(wasmPath, instantiationOptions)
            : require(wasmPath))
    
    log('wModule:', wModule)

    // wasm-pack namespaces exports under "__wasm" 
    const exports = wModule.__wasm ?? wModule.exports;

    log('exports:', exports)

    const before = performance.now();

    let returnValue;

    if(dryRun > 0){
        await sleep(dryRun).then(_ => null)
    }else{
        returnValue = exports[exportName](...inputs);;
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