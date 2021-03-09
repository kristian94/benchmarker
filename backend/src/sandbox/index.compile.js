const { run } = require('../containers/rust-wasm-compile/runner');

const path = require('path').posix;
const { convertPath } = require('../lib/utils')

run(path.join(convertPath(__dirname), '..', '..', 'test_files', 'module.rs')).then(res => {
    console.log(res);
});