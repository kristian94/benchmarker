"use strict";
/**
 *  This file should:
 *
 *  - start a worker to run the code the be BCM'd
 *  - measure memory usage during the running of the code to benchmark
 *  - save metrics to a file, retrieveable by the outside program
 *
 *
 */
// ----- imports and config -----
var __assign = (this && this.__assign) || function () {
    __assign = Object.assign || function(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
                t[p] = s[p];
        }
        return t;
    };
    return __assign.apply(this, arguments);
};
var __spreadArray = (this && this.__spreadArray) || function (to, from) {
    for (var i = 0, il = from.length, j = to.length; i < il; i++, j++)
        to[j] = from[i];
    return to;
};
exports.__esModule = true;
var fs = require('fs').promises;
var Worker = require('worker_threads').Worker;
var freemem = require('os').freemem;
var sequentialAsync = require('./utils').sequentialAsync;
var log = function () {
    var s = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        s[_i] = arguments[_i];
    }
    return console.log.apply(console, __spreadArray(['CONTROLLER |'], s));
};
var FILE_NAME = process.env.FILE_NAME;
// -----------------------------------------------
/**
 *  ArgsFile {
 *    exports: {
 *      {exportName}: {
 *        input: Any
 *      }
 *    }
 *  }
 */
fs.readFile('args.json')
    .then(JSON.parse)
    .then(function (args) {
    return sequentialAsync(args.map(function (argEntry) { return function () { return new Promise(function (resolve, reject) {
        var snapshotInterval = argEntry.snapshotInterval;
        var memorySnapshots = [];
        var addSnapshot = function () { return memorySnapshots.push(freemem()); };
        addSnapshot();
        log('starting worker...');
        var worker = new Worker('./benchmark_worker.js', {
            workerData: Object.assign({ fileName: FILE_NAME }, argEntry)
        });
        var isOnline = false;
        worker.on('online', function () {
            isOnline = true;
            var tick = function () {
                if (!isOnline)
                    return;
                addSnapshot();
                setTimeout(tick, snapshotInterval);
            };
            tick();
        });
        var formatNumber = function (n, xs) {
            if (xs === void 0) { xs = []; }
            var n_ = typeof n === 'string' ? n : n.toString();
            if (n_.length >= 4) {
                var cutoff = n_.length - 3;
                return formatNumber(n_.substring(0, cutoff), [n_.substring(cutoff)].concat(xs));
            }
            return __spreadArray([n_], xs).join('.');
        };
        worker.on('exit', function () {
            isOnline = false;
            addSnapshot();
            log('worker done');
            resolve(JSON.stringify(__assign(__assign({}, argEntry), { fileName: FILE_NAME, memorySnapshots: memorySnapshots })));
        });
    }); }; }))
        .then(function (results) { return fs.writeFile('results.json', JSON.stringify(results)); });
});
