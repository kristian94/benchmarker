/**
 *  
 *  
 *  
 */

const fs =  require('fs').promises;

const log = (...s) => console.log('CONTROLLER |', ...s)
const zeroPad = n => x => x.toString().length <= n ? x : zeroPad(n)('0' + x);
const { sequentialAsync } = require('./utils');
const { spawn } = require('child_process');

const cmdAsync = (...c: String[]) => new Promise((resolve) => {

    const process = spawn(c.shift(), c);

    process.stdout.on('data', (data) => log(data.toString()));

    process.stderr.on('data', (data) => log(data.toString()));

    process.on('close', resolve)
})

;(async () => {
    const args = await fs.readFile('args.json').then(JSON.parse);
    const wasmPath = './src/' + args.targetFile;

    // :: [] String[]
    const masterArgs = args.exportArgs.map((x, i) => 
        [wasmPath, `results-${zeroPad(3)(i)}.json`, i, 0]);

    


    const exportResultsList = await sequentialAsync(masterArgs.map(args => async () => {
        await cmdAsync('node', '--expose-gc', 'master', ...args);

        const [, resultsFile, i] = args;

        const exportResults = await fs.readFile(resultsFile).then(JSON.parse);

        return exportResults;

    }))

    await fs.writeFile('results.json', JSON.stringify(exportResultsList));

})()

export {}