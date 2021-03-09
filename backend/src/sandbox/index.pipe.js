const Benchmark = require('../containers/node-wasm-benchmark/runner');
const Compile = require('../containers/rust-wasm-compile/runner');

const path = require('path').posix;
const { convertPath } = require('../lib/utils');


;(async () => {
    const compileResults = await Compile.run(path.join(convertPath(__dirname), '..', '..', 'test_files', 'module.rs'));

    console.log('compileResults:', compileResults)

    const bmResults = await Benchmark.run(compileResults.dir, compileResults.fileName, [
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
    ])

    console.log('bmResults:', bmResults)
})();