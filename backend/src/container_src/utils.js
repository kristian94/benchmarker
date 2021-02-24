"use strict";
exports.__esModule = true;
exports.sequentialAsync = void 0;
var fs = require('fs').promises;
// sequentialAsync :: Array (() -> Promise) -> Promise          // sequential alternative to Promise.all
var sequentialAsync = function (promiseThunks) {
    var results = [];
    return promiseThunks.reduce(function (acc, cur) { return acc.then(cur).then(function (x) { return results.push(x); }); }, Promise.resolve()).then(function () { return results; });
};
exports.sequentialAsync = sequentialAsync;
