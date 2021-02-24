const test = require('ava')
const { formatNumber, convertPath } = require('./utils')

test('convertPath - windows to posix', t => {
    const winPath = 'C:\\Users\\Bob\\readme.md';
    const posixPath = 'C:/Users/Bob/readme.md'
    
    t.is(convertPath(winPath, '/'), posixPath);
})