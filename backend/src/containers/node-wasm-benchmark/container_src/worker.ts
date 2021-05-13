const { workerData, parentPort } = require('worker_threads');
const { getWasmExports } = require('./wasm-importer');
const { performance } = require('perf_hooks');
import { whenMessage } from './utils'; 
import { WorkerResult, WorkerData, WorkerMessageType, WorkerMessage } from './types'

const { wasmPath, exportName, inputs, instantiationOptions } = workerData as WorkerData;
const log = (...s) => console.log('WORKER |', ...s);

(async () => {
    const wModule = await getWasmExports(wasmPath, instantiationOptions);

    const exports = wModule.exports;

    // @ts-ignore
    gc();

    log('awaiting first continue')
    await whenMessage(parentPort, WorkerMessageType.Continue);
    log('first continue received')

    const before = performance.now();

    const returnValue = exports[exportName](...inputs);

    const after = performance.now();
    const executionDuration = after - before;

    const workerResult: WorkerResult = {
        executionDuration,
        returnValue
    }

    parentPort.postMessage({
        type: WorkerMessageType.Result,
        data: workerResult
    });

    log('awaiting second continue')
    await whenMessage(parentPort, WorkerMessageType.Continue);
    log('second continue received')

    parentPort.close();
})();

export {}