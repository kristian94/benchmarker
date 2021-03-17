const { run } = require('../containers/emscripten/runner');

// const path = require('path').posix;
// const { convertPath } = require('../lib/utils')

// const _path = path.join(convertPath(__dirname), '..', '..', 'test_files', 'module.rs')

run().then(res => {
    console.log(res);
});