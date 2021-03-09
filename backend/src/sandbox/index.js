const { run } = require('../containers/node-wasm-benchmark/runner');

const path = require('path').posix;
const { convertPath } = require('../lib/utils');



run(path.join(convertPath(__dirname), 'fibonacci.js'), [
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