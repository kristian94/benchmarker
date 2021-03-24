const fs = require('fs').promises;
const path = require('path').posix;
const { convertPath, fileExists } = require('./utils');

export const pathToTemp = path.join(convertPath(__dirname), '..', '..', 'temp');

export const ensureTemp = fileExists(pathToTemp).then(tempExists => tempExists 
    ? Promise.resolve()
    : fs.mkdir(pathToTemp));

export const dockerFileRelative = dockerFilePath => _path => path.relative(path.dirname(dockerFilePath), _path)

export const backendDir = path.join(convertPath(__dirname), '..', '..');

export const createTempDir = (name) => {
    const _path = path.join(pathToTemp, name);
    return fs.mkdir(_path).then(() => _path)
}