/**
 *  This file should:
 * 
 *  - start a worker to run the code the be BCM'd
 *  - measure memory usage during the running of the code to benchmark
 *  - save metrics to a file, retrieveable by the outside program
 *  
 *  
 */
// ----- imports and config -----
const log = s => console.log('CONTROLLER |', s)

const fs = require('fs').promises;
const { Worker } = require('worker_threads');
const os = require('os');
const { freemem } = os;

const { FILE_NAME, INPUT, INTERVAL_MS } = Object.assign({
    INPUT: 45,
    INTERVAL_MS: 500
}, process.env);

// -----------------------------------------------
const memorySnapshots = [];

const addSnapshot = () => memorySnapshots.push(freemem());

addSnapshot();

log('starting worker...');

const worker = new Worker('./benchmark_worker.js', {
    workerData: {
        fileName: FILE_NAME,
        input: INPUT
    }
});

let isOnline = false;

worker.on('online', () => {
    isOnline = true;
    const tick = () => {
        if(!isOnline) return;
        addSnapshot();
        setTimeout(tick, INTERVAL_MS)
    }

    tick();
})

const formatNumber = (n, xs = []) => {
    const n_ = typeof n === 'string' ? n : n.toString()
    if(n_.length >= 4){
        const cutoff = n_.length - 3;
        return formatNumber(n_.substring(0, cutoff), [n_.substring(cutoff)].concat(xs))
    }
    return [n_, ...xs].join('.')
}

worker.on('exit', () => {
    isOnline = false;
    addSnapshot();

    log('worker done, writing snapshots to file "results.json"')
    console.log(memorySnapshots.map(x => `${formatNumber(Math.round(x / 1000))} KB`))

    fs.writeFile('results.json', JSON.stringify(memorySnapshots))

});