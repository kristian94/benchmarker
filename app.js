// getName :: Number -> String
const getName = (() => {
    const alph = 'abcde12345'.split('');
    const getLetter = () => alph[Math.floor(Math.random() * alph.length)]

    return l => {
        const ns = new Array(l).fill(0);
        return ns.map(getLetter).join('')
    }
})();

const { spawn } = require('child_process');

// cmd :: Spawn -> Promise
const cmd = (c, args) => new Promise((resolve, reject) => {
    const proc = spawn(c, args);
    proc.stdout.on('data', (data) => {
        console.log(`stdout: ${data}`);
    });

    proc.stderr.on('data', (data) => {
        console.error(`stderr: ${data}`);
    });

    proc.on('close', (code) => {
        code == 0 ? resolve() : reject()
        console.log(`child process exited with code ${code}`);
    });
})

const workingDir = '/usr/src/app';
const imageName = `benchmarks/${getName(10)}`
const containerName = getName(10);

// dockerBuild :: String, String -> Promise
const dockerBuild = (imageName, fileName) => cmd('docker', [
    'build',
    '--build-arg',
    `file=${fileName}`,
    '--build-arg',
    `workdir=${workingDir}`,
    '-t',
    imageName,
    '.'
])

const dockerCreate = (imageName) => cmd('docker', [
    'create',
    '--name',
    containerName,
    imageName
])

const dockerCp = () => cmd('docker', [
    'cp',
    `${containerName}:/${workingDir}/results.json`,
    './temp'
])

const dockerRmExtract = () => cmd('docker', [
    'rm',
    'extract'
])


dockerBuild(imageName, 'fibonacci.js')
    .then(() => dockerCreate(imageName))
    .then(() => dockerCp())
    // .then(() => dockerRmExtract())
    .catch(err => {
        console.log('Docker benchmark failed, check logs...') // shitty error handling, i know
    });

