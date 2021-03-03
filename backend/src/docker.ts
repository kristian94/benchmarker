const fs = require('fs').promises;
const { v4: uuidv4 } = require('uuid');
const path = require('path').posix;
const { convertPath, fileExists } = require('./lib/utils');
const { spawn } = require('child_process');

const pathToTemp = path.join(convertPath(__dirname), '..', 'temp');

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

const dockerExec = (containerName, args: String[]) => cmd('docker', [
    'exec',
    containerName,
    ...args
])

const dockerExecNode = (workingDir, containerName) => dockerExec(containerName, [
    'node',
    `${workingDir}/benchmark_controller.js`
])

const dockerCp = (containerName, sourcePath, targetPath) => cmd('docker', [
    'cp',
    `${containerName}:${sourcePath}`,
    targetPath
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

const ensureTemp = fileExists(pathToTemp).then(tempExists => tempExists 
    ? Promise.resolve()
    : fs.mkdir(pathToTemp));






export const compileFile = async (filePath) => {
    // todo, parameterize
    // const compileCommand = ['wasm-pack']

    const dockerFilePath = path.join(convertPath(__dirname), '..', 'dockerfiles', 'Compile.Dockerfile');
    const dockerFileDir = path.dirname(dockerFilePath);
    const imageName = `compile/${uuidv4()}`
    const containerName = uuidv4();
    const rustPackageName = "wasm_01";
    const workingDir = '/usr/src';
    const compilerSrcDir = path.join(convertPath(__dirname), '..', 'rust_compile_src');
    const containerTempDir = path.join(pathToTemp, containerName);

    const relative = _path => path.relative(dockerFileDir, _path)
    const fileName = path.basename(filePath);

    try
    {
        await ensureTemp
        await dockerBuild(dockerFilePath, imageName, {
            workingDir,
            filePath: relative(filePath),
            compilerSrcDir: relative(compilerSrcDir),
            rustPackageName
        })

        await dockerCreate(imageName, containerName)
        await dockerStart(containerName)

        await dockerExec(containerName, [
            'cargo',
            'new',
            '--lib',
            rustPackageName
        ])

        await dockerExec(containerName, [
            'rm',
            `${rustPackageName}/Cargo.toml`
        ]);

        await dockerExec(containerName, [
            'mv',
            `temp/Cargo.toml`,
            `${rustPackageName}`
        ]);

        await dockerExec(containerName, [
            'rm',
            `${rustPackageName}/src/lib.rs`
        ]);

        await dockerExec(containerName, [
            'mv',
            `temp/lib.rs`,
            `${rustPackageName}/src`
        ]);

        await dockerExec(containerName, [
            'bash',
            '-c',
            `cd wasm_01 && wasm-pack build --target nodejs`
        ]);

        await fs.mkdir(containerTempDir);

        await dockerCp(containerName, 
            `/${workingDir}/${rustPackageName}/pkg`,
            `./${relative(containerTempDir)}`
        )

        await dockerKill(containerName)
        await dockerRmContainer(containerName)
        await dockerRmImage(imageName)
    }catch(err){
        console.log(`An error was thrown while compiling ${filePath}`);
        console.error(err);
    }
}






export const benchmarkFile = (filePath, args) => {

    // absolute path to Dockerfile
    const dockerFilePath = path.join(convertPath(__dirname), '..', 'Benchmark.Dockerfile');

    // file to benchmark
    const fileName = path.basename(filePath);
    const relativeFilePath = path.relative(dockerFilePath, filePath);

    // benchmark arguments json file
    const argFileName = `args.${uuidv4()}.json`;
    const argFilePath = path.join(pathToTemp, argFileName);
    const relativeArgFilePath = path.relative(dockerFilePath, argFilePath);

    // docker arguments
    const workingDir = '/usr/src/app';
    const imageName = `benchmarks/${uuidv4()}`
    const containerName = uuidv4();

    console.log(`Creating image '${imageName}' and container '${containerName}'`);

    return ensureTemp
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
        .then(() => dockerExec(containerName, [
            'node',
            `${workingDir}/benchmark_controller.js`
        ]))
        .then(() => dockerCp(containerName, `/${workingDir}/results.json`, `./temp/results.${containerName}.json`))
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