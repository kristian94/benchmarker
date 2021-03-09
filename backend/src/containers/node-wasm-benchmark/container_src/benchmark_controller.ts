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

const fs =  require('fs').promises;
const { Worker } = require('worker_threads');
const { freemem } = require('os');
const { sequentialAsync } = require('./utils')

const log = (...s: String[]) => console.log('CONTROLLER |', ...s)

const { FILE_NAME } = process.env;

// -----------------------------------------------

/**
 *  ArgsFile {
 *    exports: {
 *      {exportName}: {
 *        input: Any
 *      }
 *    }
 *  }
 */
fs.readFile('args.json')
    .then(JSON.parse)
    .then(args => {

    return sequentialAsync(args.map(argEntry => () => new Promise((resolve, reject) => {

        const { snapshotInterval } = argEntry

        const memorySnapshots: Number[] = [];
    
        const addSnapshot = () => memorySnapshots.push(freemem());
    
        addSnapshot();

        log('starting worker...');

        const worker = new Worker('./benchmark_worker.js', {
            workerData: Object.assign(
                { fileName: FILE_NAME }, 
                argEntry)
        });
        
        let isOnline = false;
        
        worker.on('online', () => {
            isOnline = true;
            const tick = () => {
                if(!isOnline) return;
                addSnapshot();
                setTimeout(tick, snapshotInterval)
            }
        
            tick();
        })
        
        const formatNumber = (n, xs: Number[] = []) => {
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
        
            log('worker done')
        
            resolve(JSON.stringify({
                ...argEntry,
                fileName: FILE_NAME,
                memorySnapshots
            }));
        
        });
    })))
    .then(results => fs.writeFile('results.json', JSON.stringify(results)))
})


// had to add this to prevent "redeclaration of block-scoped variable" error 
// (see https://stackoverflow.com/questions/40900791/cannot-redeclare-block-scoped-variable-in-unrelated-files)
export {}