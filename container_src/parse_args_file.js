const parseArgsFileExports = argsFile => {
    const {exports} = argsFile;
    const exportNames = Object.keys(exports);

    return exportNames.map(key => exports[key].inputs.map(input => ({
        exportName: key,
        input
    }))).reduce((a, b) => a.concat(b), []);
}

module.exports = {
    parseArgsFileExports
}
