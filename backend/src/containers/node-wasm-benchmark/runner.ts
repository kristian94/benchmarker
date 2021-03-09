const path = require('path').posix;
const fs = require('fs').promises;
const { v4: uuidv4 } = require('uuid');
const { pathToTemp, ensureTemp, backendDir, dockerFileRelative } = require('../fs_util');
const { convertPath } = require('../../lib/utils');

const dockerFilePath = path.join(convertPath(__dirname), 'Dockerfile');

const { getContext } = require('../docker-commands');

const { 
    dockerBuild,
    dockerCreate,
    dockerStart,
    dockerExec,
    dockerCp,
    dockerKill,
    dockerRmContainer,
    dockerRmImage
} = getContext(backendDir);


export const run = async (filePath, args) => {

    // get path relative to the cwd, passed to the docker context
    const relative = _path => path.relative(backendDir, _path);

    // file to benchmark
    const fileName = path.basename(filePath);
    // const relativeFilePath = path.relative(dockerFilePath, filePath);

    // benchmark arguments json file
    const argFileName = `args.${uuidv4()}.json`;
    const argFilePath = path.join(pathToTemp, argFileName);
    // const relativeArgFilePath = path.relative(dockerFilePath, argFilePath);

    // container src dir
    const containerSrcDir = path.join(convertPath(__dirname), 'container_src');


    // docker arguments
    const workingDir = '/usr/src/app';
    const imageName = `benchmarks/${uuidv4()}`
    const containerName = uuidv4();

    try
    {
        await ensureTemp
        await fs.writeFile(argFilePath, JSON.stringify(args));
        await dockerBuild(dockerFilePath, imageName, {
            fileName: fileName,
            filePath: relative(filePath),
            argFilePath: relative(argFilePath),
            containerSrcDir: relative(containerSrcDir),
            workingDir,
        });

        await dockerCreate(imageName, containerName);
        await fs.unlink(argFilePath);

        await dockerStart(containerName);
        await dockerExec(containerName, [
            'node',
            `${workingDir}/benchmark_controller.js`
        ]);

        await dockerCp(containerName, `/${workingDir}/results.json`, `./temp/results.${containerName}.json`);

    }catch(err){
        console.log(`An error was thrown while benchmarking ${filePath}`);
        console.error(err);
    }

    await dockerKill(containerName).catch(() => console.info('Non-critical: kill failed'))
    await dockerRmContainer(containerName).catch(() => console.info('Non-critical: rmContainer failed'))
    await dockerRmImage(imageName).catch(() => console.info('Non-critical: rmImage failed'))
}