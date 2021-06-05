const { workerData, parentPort } = require('worker_threads');
const { loaders } = require('./abstract-loader');

const { performance } = require('perf_hooks');
import { whenMessage } from './utils'; 
import { WorkerResult, WorkerData, WorkerMessageType } from './types'

const { wasmPath, exportName, inputs, loader } = workerData as WorkerData;
const log = (...s) => console.log('WORKER |', ...s);

(async () => {
    const loaderInstance = loaders[loader];

    const exports = await loaderInstance.getExports(wasmPath);

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