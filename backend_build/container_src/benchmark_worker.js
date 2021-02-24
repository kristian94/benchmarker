"use strict";
/**
 *  This file should:
 *
 *  - run the input file function
 *  - message return value to master process
 *
 */
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
const path = require('path');
const { workerData } = require('worker_threads');
const { getWasmExports } = require('./wasm');
const { performance } = require('perf_hooks');
const log = (...s) => console.log('WORKER |', ...s);
const { fileName, input, exportName } = workerData;
(() => __awaiter(void 0, void 0, void 0, function* () {
    const filePath = path.join(__dirname, fileName);
    const _exports = yield (/.*?wasm$/.test(fileName)
        ? getWasmExports(filePath)
        : require(filePath));
    const before = performance.now();
    const val = _exports[exportName](input);
    const after = performance.now();
    log(`finished in ${Math.round(after - before)}ms, value: ${val}`);
}))();
