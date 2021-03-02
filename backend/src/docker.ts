const fs = require('fs').promises;
const { v4: uuidv4 } = require('uuid');
const path = require('path').posix;
const { convertPath, fileExists } = require('./lib/utils');

const { spawn } = require('child_process');

const cmd: (c: String, args: String[]) => Promise<void> = 
    (c, args) => new Promise((resolve, reject) => {
        const commandString = [c, ...args].join(' ');
        console.log('running:', commandString)
        const proc = spawn(c, args);
        proc.stdout.on('data', (data) => {
            console.log(data.toString());
        });

        proc.stderr.on('data', (data) => {
            console.error(data.toString());
        });

        proc.on('close', (code) => {
            code == 0 ? resolve() : reject()
            console.log(`${commandString} exited with code ${code}`);
        });
    })

const dockerBuild = (dockerFilePath, imageName, buildArgs) => cmd('docker', [
    'build',
    '-f',
    dockerFilePath,
    ...Object.keys(buildArgs).map(key => ['--build-arg', `${key}=${buildArgs[key]}`])
        .reduce((a, b) => a.concat(b), []),
    '-t',
    imageName,
    '.'
])

const dockerCreate = (imageName, containerName) => cmd('docker', [
    'create',
    '--name',
    containerName,
    imageName
])

const dockerStart = (containerName) => cmd('docker', [
    'start',
    containerName
])

const dockerExecNode = (workingDir, containerName) => cmd('docker', [
    'exec',
    containerName,
    'node',
    `${workingDir}/benchmark_controller.js`
])

const dockerCp = (containerName, workingDir) => cmd('docker', [
    'cp',
    `${containerName}:/${workingDir}/results.json`,
    `./temp/results.${containerName}.json`
])

const dockerKill = (containerName) => cmd('docker', [
    'kill',
    containerName
])

const dockerRmContainer = (containerName) => cmd('docker', [
    'rm',
    containerName
])

const dockerRmImage = (imageName) => cmd('docker', [
    'rmi',
    imageName
])


const benchmarkFile = (filePath, args) => {
    // path to temp
    const pathToTemp = path.join(convertPath(__dirname), '..', 'temp');

    // absolute path to Dockerfile
    const dockerFilePath = path.join(convertPath(__dirname), '..', 'Dockerfile');

    // file to benchmark
    const fileName = path.basename(filePath);
    const relativeFilePath = path.relative(dockerFilePath, filePath);

    // benchmark arguments json file
    const argFileName = `args.${uuidv4()}.json`;
    const argFilePath = path.join(convertPath(__dirname), '..', 'temp', argFileName);
    const relativeArgFilePath = path.relative(dockerFilePath, argFilePath);

    // docker arguments
    const workingDir = '/usr/src/app';
    const imageName = `benchmarks/${uuidv4()}`
    const containerName = uuidv4();

    console.log(`Creating image '${imageName}' and container '${containerName}'`);

    return fileExists(pathToTemp).then(tempExists => tempExists 
            ? Promise.resolve()
            : fs.mkdir(pathToTemp))
        .then(() => fs.writeFile(argFilePath, JSON.stringify(args)))
        .then(() => dockerBuild(dockerFilePath, imageName, {
            fileName: fileName,
            filePath: relativeFilePath,
            argFilePath: relativeArgFilePath,
            workingDir,
        }))
        .then(() => dockerCreate(imageName, containerName))
        .then(() => fs.unlink(argFilePath))
        .then(() => dockerStart(containerName))
        .then(() => dockerExecNode(workingDir, containerName))
        .then(() => dockerCp(containerName, workingDir))
        .then(() => dockerKill(containerName))
        .catch(err => {
            console.error(err);
            console.log('Docker benchmark failed, check logs...') // shitty error handling, i know
        })
        .then(() => dockerRmContainer(containerName))
        .then(() => dockerRmImage(imageName))
        .catch(err => {
            console.error(err);
            console.error(`Docker benchmark cleanup failed, following image and container may remain undeleted (delete these manually): ${imageName} ${containerName}`) // shitty error handling, i know
        });
}

export {
    benchmarkFile
}