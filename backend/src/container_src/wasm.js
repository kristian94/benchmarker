"use strict";
exports.__esModule = true;
exports.getWasmExports = void 0;
var fs = require('fs').promises;
var getWasmExports = function (fileName) { return fs.readFile(fileName)
    .then(WebAssembly.instantiate)
    .then(function (x) { return x.instance.exports; }); };
exports.getWasmExports = getWasmExports;
