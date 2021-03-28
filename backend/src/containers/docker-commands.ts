const { spawn } = require('child_process');
const { backendDir } = require('../lib/fs_util')
const chalk = require('chalk');

const cmd: (c: String, cwd: String, args: String[]) => Promise<void> = 
    (c, cwd, args) => new Promise((resolve, reject) => {
        const commandString = [c, ...args].join(' ');
        console.log('running:', chalk.green(commandString))

        const proc = spawn(c, args, {
            cwd
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


export const getContext = cwd => ({
    dockerBuild: (dockerFilePath, imageName, buildArgs) => cmd('docker', cwd, [
        'build',
        '-f',
        dockerFilePath,
        ...Object.keys(buildArgs).map(key => ['--build-arg', `${key}=${buildArgs[key]}`])
            .reduce((a, b) => a.concat(b), []),
        '-t',
        imageName,
        '.'
    ]),
    dockerCreate: (imageName, containerName) => cmd('docker', cwd, [
        'create',
        '--name',
        containerName,
        imageName
    ]),
    dockerStart: (containerName) => cmd('docker', cwd, [
        'start',
        containerName
    ]),
    dockerExec: (containerName, args: String[]) => cmd('docker', cwd, [
        'exec',
        containerName,
        ...args
    ]),
    dockerCp: (containerName, sourcePath, targetPath) => cmd('docker', cwd, [
        'cp',
        `${containerName}:${sourcePath}`,
        targetPath
    ]),
    dockerKill: (containerName) => cmd('docker', cwd, [
        'kill',
        containerName
    ]),
    dockerRmContainer: (containerName) => cmd('docker', cwd, [
        'rm',
        containerName
    ]),
    dockerRmImage: (imageName) => cmd('docker', cwd, [
        'rmi',
        imageName
    ])
})

