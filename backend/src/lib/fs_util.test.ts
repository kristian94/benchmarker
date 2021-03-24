const test = require('ava')
const { backendDir, pathToTemp } = require('./fs_util')

test('backendDir - ends with /backend', t => {
    const regex = /\/backend$/
    t.is(regex.test(backendDir), true);
})

test('pathToTemp - ends with /backend/temp', t => {
    const regex = /\/backend\/temp$/
    t.is(regex.test(pathToTemp), true);
})

export {}