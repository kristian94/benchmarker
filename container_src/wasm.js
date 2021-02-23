const fs = require('fs').promises;

const getWasmExports = fileName => fs.readFile(fileName)
    .then(WebAssembly.instantiate)
    .then(x => x.instance.exports);

module.exports = {
    getWasmExports
}