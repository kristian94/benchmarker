/**
 *  This file should:
 * 
 *  - run the input file function
 *  - message return value to master process
 *  
 */

const path = require('path');
const { workerData } = require('worker_threads');

const log = s => console.log('WORKER |', s)
const { fileName, input } = workerData;

const fn = require(path.join(__dirname, fileName));

log(`running function exported by ${fileName} with input ${input}`)

const val = fn(input);

log(`finished, value: ${val}`);