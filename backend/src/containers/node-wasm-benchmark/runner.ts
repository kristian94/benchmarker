const path = require('path').posix;
const fs = require('fs').promises;
const { v4: uuidv4 } = require('uuid');
const { pathToTemp, ensureTemp, backendDir, dockerFileRelative } = require('../../lib/fs_util');
const { convertPath } = require('../../lib/utils');
import { BenchmarkArgs } from './types'

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


export const run = async (args: BenchmarkArgs) => {

    // get path relative to the cwd, passed to the docker context
    const relative = _path => path.relative(backendDir, _path);

    // benchmark arguments json file
    const argFileName = `args.json`;
    const argFilePath = path.join(args.tempDir, argFileName);

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
            tempDir: relative(args.tempDir),
            containerSrcDir: relative(containerSrcDir),
            workingDir,
        });

        await dockerCreate(imageName, containerName);
        await fs.unlink(argFilePath);

        await dockerStart(containerName);
        await dockerExec(containerName, [
            'node',
            `${workingDir}/controller.js`
        ]);

        await dockerCp(containerName, `/${workingDir}/results.json`, relative(path.join(args.tempDir, 'results.json')));

        const results = await fs.readFile(path.join(args.tempDir, 'results.json')).then(JSON.parse);

        console.log(results)

        return results;

    }catch(err){
        console.log(`An error was thrown while benchmarking ${args.targetFile}`);
        console.error(err);
    }

    await dockerKill(containerName).catch(() => console.info('Non-critical: kill failed'))
    await dockerRmContainer(containerName).catch(() => console.info('Non-critical: rmContainer failed'))
    await dockerRmImage(imageName).catch(() => console.info('Non-critical: rmImage failed'))
}
