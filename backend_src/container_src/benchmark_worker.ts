/**
 *  This file should:
 * 
 *  - run the input file function
 *  - message return value to master process
 *  
 */

const path = require('path');
const { workerData } = require('worker_threads');
const { getWasmExports } = require('./wasm');
const { performance } = require('perf_hooks');

const log = (...s: String[]) => console.log('WORKER |', ...s)
const { fileName, input, exportName } = workerData;

(async () => {
    const filePath = path.join(__dirname, fileName);
    const _exports = await (/.*?wasm$/.test(fileName)
            ? getWasmExports(filePath)
            : require(filePath))
    
    const before = performance.now();
    const val = _exports[exportName](input);
    const after = performance.now();

    log(`finished in ${Math.round(after - before)}ms, value: ${val}`);
})();

// see bottom of benchmark_controller.js
export {}