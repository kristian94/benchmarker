"use strict";
var __spreadArray = (this && this.__spreadArray) || function (to, from) {
    for (var i = 0, il = from.length, j = to.length; i < il; i++, j++)
        to[j] = from[i];
    return to;
};
exports.__esModule = true;
exports.benchmarkFile = void 0;
var fs = require('fs').promises;
var uuidv4 = require('uuid').v4;
var path = require('path').posix;
var convertPath = require('./lib/utils').convertPath;
var spawn = require('child_process').spawn;
var cmd = function (c, args) { return new Promise(function (resolve, reject) {
    var commandString = __spreadArray([c], args).join(' ');
    console.log('running:', commandString);
    var proc = spawn(c, args);
    proc.stdout.on('data', function (data) {
        console.log(data.toString());
    });
    proc.stderr.on('data', function (data) {
        console.error(data.toString());
    });
    proc.on('close', function (code) {
        code == 0 ? resolve() : reject();
        console.log(commandString + " exited with code " + code);
    });
}); };
var dockerBuild = function (dockerFilePath, imageName, buildArgs) { return cmd('docker', __spreadArray(__spreadArray([
    'build',
    '-f',
    dockerFilePath
], Object.keys(buildArgs).map(function (key) { return ['--build-arg', key + "=" + buildArgs[key]]; })
    .reduce(function (a, b) { return a.concat(b); }, [])), [
    '-t',
    imageName,
    '.'
])); };
var dockerCreate = function (imageName, containerName) { return cmd('docker', [
    'create',
    '--name',
    containerName,
    imageName
]); };
var dockerStart = function (containerName) { return cmd('docker', [
    'start',
    containerName
]); };
var dockerExecNode = function (workingDir, containerName) { return cmd('docker', [
    'exec',
    containerName,
    'node',
    workingDir + "/benchmark_controller.js"
]); };
var dockerCp = function (containerName, workingDir) { return cmd('docker', [
    'cp',
    containerName + ":/" + workingDir + "/results.json",
    "./temp/results." + containerName + ".json"
]); };
var dockerKill = function (containerName) { return cmd('docker', [
    'kill',
    containerName
]); };
var dockerRmContainer = function (containerName) { return cmd('docker', [
    'rm',
    containerName
]); };
var dockerRmImage = function (imageName) { return cmd('docker', [
    'rmi',
    imageName
]); };
var benchmarkFile = function (filePath, args) {
    // absolute path to Dockerfile
    var dockerFilePath = path.join(convertPath(__dirname), '..', 'Dockerfile');
    // file to benchmark
    var fileName = path.basename(filePath);
    var relativeFilePath = path.relative(dockerFilePath, filePath);
    // benchmark arguments json file
    var argFileName = "args." + uuidv4() + ".json";
    var argFilePath = path.join(convertPath(__dirname), '..', 'temp', argFileName);
    var relativeArgFilePath = path.relative(dockerFilePath, argFilePath);
    // docker arguments
    var workingDir = '/usr/src/app';
    var imageName = "benchmarks/" + uuidv4();
    var containerName = uuidv4();
    console.log("Creating image '" + imageName + "' and container '" + containerName + "'");
    return fs.writeFile(argFilePath, JSON.stringify(args))
        .then(function () { return dockerBuild(dockerFilePath, imageName, {
        fileName: fileName,
        filePath: relativeFilePath,
        argFilePath: relativeArgFilePath,
        workingDir: workingDir
    }); })
        .then(function () { return dockerCreate(imageName, containerName); })
        .then(function () { return fs.unlink(argFilePath); })
        .then(function () { return dockerStart(containerName); })
        .then(function () { return dockerExecNode(workingDir, containerName); })
        .then(function () { return dockerCp(containerName, workingDir); })
        .then(function () { return dockerKill(containerName); })["catch"](function (err) {
        console.error(err);
        console.log('Docker benchmark failed, check logs...'); // shitty error handling, i know
    })
        .then(function () { return dockerRmContainer(containerName); })
        .then(function () { return dockerRmImage(imageName); })["catch"](function (err) {
        console.error(err);
        console.error("Docker benchmark cleanup failed, following image and container may remain undeleted (delete these manually): " + imageName + " " + containerName); // shitty error handling, i know
    });
};
exports.benchmarkFile = benchmarkFile;
