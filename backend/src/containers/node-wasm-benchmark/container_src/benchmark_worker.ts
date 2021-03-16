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

const log = (...s) => console.log('WORKER |', ...s)
const { fileName, input, exportName } = workerData;


(async () => {
    
    const filePath = path.join(__dirname, 'pkg', fileName);
    
    const _exports = await (/.*?wasm$/.test(fileName)
            ? getWasmExports(filePath)
            : require(filePath))
    
    const before = performance.now();
    const val = _exports.__wasm[exportName](input);
    const after = performance.now();

    log(`finished in ${Math.round(after - before)}ms, value: ${val}`);
})();

// see bottom of benchmark_controller.js
export {}