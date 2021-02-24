"use strict";
exports.__esModule = true;
exports.parseArgsFileExports = void 0;
var parseArgsFileExports = function (argsFile) {
    var exports = argsFile.exports;
    var exportNames = Object.keys(exports);
    return exportNames.map(function (key) { return exports[key].inputs.map(function (input) { return ({
        exportName: key,
        input: input
    }); }); }).reduce(function (a, b) { return a.concat(b); }, []);
};
exports.parseArgsFileExports = parseArgsFileExports;
