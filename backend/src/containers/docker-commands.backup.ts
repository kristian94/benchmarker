const { spawn } = require('child_process');
const { backendDir } = require('./fs_util')
const chalk = require('chalk');

const cmd: (c: String, args: String[]) => Promise<void> = 
    (c, args) => new Promise((resolve, reject) => {
        const commandString = [c, ...args].join(' ');
        console.log('running:', chalk.green(commandString))

        const proc = spawn(c, args, {
            // cwd: backendDir
        });

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

export const dockerBuild = (dockerFilePath, imageName, buildArgs) => cmd('docker', [
    'build',
    '-f',
    dockerFilePath,
    ...Object.keys(buildArgs).map(key => ['--build-arg', `${key}=${buildArgs[key]}`])
        .reduce((a, b) => a.concat(b), []),
    '-t',
    imageName,
    '.'
])

export const dockerCreate = (imageName, containerName) => cmd('docker', [
    'create',
    '--name',
    containerName,
    imageName
])

export const dockerStart = (containerName) => cmd('docker', [
    'start',
    containerName
])

export const dockerExec = (containerName, args: String[]) => cmd('docker', [
    'exec',
    containerName,
    ...args
])

export const dockerCp = (containerName, sourcePath, targetPath) => cmd('docker', [
    'cp',
    `${containerName}:${sourcePath}`,
    targetPath
])

export const dockerKill = (containerName) => cmd('docker', [
    'kill',
    containerName
])

export const dockerRmContainer = (containerName) => cmd('docker', [
    'rm',
    containerName
])

export const dockerRmImage = (imageName) => cmd('docker', [
    'rmi',
    imageName
])