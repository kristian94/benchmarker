const path = require('path').posix;
const fs = require('fs').promises;
const { v4: uuidv4 } = require('uuid');
const { pathToTemp, ensureTemp, backendDir, dockerFileRelative } = require('../fs_util');
const { convertPath } = require('../../lib/utils');

const dockerFilePath = path.join(convertPath(__dirname), 'Dockerfile');

const {getContext} = require('../docker-commands');

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


export interface CompileResult {
    dir: String,
    fileName: String
}

export const run = async () => {
    
    const imageName = `emscripten/${uuidv4()}`
    const containerName = uuidv4();
    const workingDir = '/usr/src';
    const compilerSrcDir = path.join(convertPath(__dirname), 'container_src');
    const containerTempDir = path.join(pathToTemp, containerName);

    const relative = _path => path.relative(backendDir, _path);

    try
    {
        await ensureTemp
        await dockerBuild(dockerFilePath, imageName, {
            workingDir,
            // filePath: relative(filePath),
            // compilerSrcDir: relative(compilerSrcDir),
            // rustPackageName
        })

        await dockerCreate(imageName, containerName)
        await dockerStart(containerName)

        // await dockerExec(containerName, [

        // ]);

        await fs.mkdir(containerTempDir);

        // await dockerCp(containerName, 
        //     `/${workingDir}/..?`,
        //     `${path.relative(backendDir, containerTempDir)}`
        // )

    }catch(err){
        console.log(`An error was thrown while compiling`);
        console.error(err);
    }

    // await dockerKill(containerName).catch(() => console.info('Non-critical: kill failed'))
    // await dockerRmContainer(containerName).catch(() => console.info('Non-critical: rmContainer failed'))
    // await dockerRmImage(imageName).catch(() => console.info('Non-critical: rmImage failed'))

    return {
        
    }
}