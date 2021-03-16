const fs = require('fs').promises;
const path = require('path').posix;
const { convertPath, fileExists } = require('../lib/utils');

export const pathToTemp = path.join(convertPath(__dirname), '..', '..', 'temp');

export const ensureTemp = fileExists(pathToTemp).then(tempExists => tempExists 
    ? Promise.resolve()
    : fs.mkdir(pathToTemp));

export const dockerFileRelative = dockerFilePath => _path => path.relative(path.dirname(dockerFilePath), _path)

export const backendDir = path.join(convertPath(__dirname), '..', '..');