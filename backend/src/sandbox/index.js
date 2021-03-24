const { run } = require('../containers/node-wasm-benchmark/runner');
const path = require('path').posix;
const { convertPath } = require('../lib/utils');
const { createTempDir } = require('../lib/fs_util');
const { v4 } = require('uuid');
const fs = require('fs').promises;
const fsExtra = require('fs-extra');


;(async () => {
    const id = v4();
    
    const inDir = path.join(convertPath(__dirname), '..', '..', 'test_files', 'bench_input');

    const tempDir = await createTempDir(id);

    await fsExtra.copy(inDir, path.join(tempDir, 'src'));

    const benchmarkArgs = {
        targetFile: 'wasm_01.js',
        tempDir: tempDir,
        exportArgs: [
            {
                exportName: 'fibonacci',
                input: 43,
                interval: 250
            },
            {
                exportName: 'fibonacci',
                input: 40,
                interval: 50
            }
        ]
    };

    run(benchmarkArgs);
})();


