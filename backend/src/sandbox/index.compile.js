const { compileFile } = require('../docker');
const path = require('path').posix;
const { convertPath } = require('../lib/utils')

compileFile(path.join(convertPath(__dirname), '..', '..', 'test_files', 'module.rs')).then(res => {
    console.log(res);
});