"use strict";
const { benchmarkFile } = require('../docker');
const path = require('path').posix;
const { convertPath } = require('../lib/utils');
benchmarkFile(path.join(convertPath(__dirname), 'fibonacci.js'), [
    {
        exportName: 'fibonacci',
        input: 43,
        snapshotInterval: 250
    },
    {
        exportName: 'fibonacci',
        input: 40,
        snapshotInterval: 50
    }
]);
