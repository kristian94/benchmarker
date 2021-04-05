import express from "express";
import multer from "multer"
import { v4 as uuidv4 } from "uuid"
import { backendDir, createTempDir, getTempDirPath } from '../lib/fs_util'
import { fileExists } from '../lib/utils'

import { promises as fs } from 'fs';
import * as benchmarkRunner from '../containers/node-wasm-benchmark/runner';

import { posix as path } from 'path';

import { getWasmExports, WasmInstantiationOptions } from '../containers/node-wasm-benchmark/container_src/wasm-importer'
import { EnrichedWorkerResult, ExportInput } from "src/containers/node-wasm-benchmark/container_src/types";
import { BenchmarkArgs } from "src/containers/node-wasm-benchmark/types";

const storage = multer.diskStorage({
    destination: async (req, file, cb) => {
        try {
            const id = uuidv4();

            const _path = await createTempDir(id);
            const _srcPath = path.join(_path, 'src');

            await fs.mkdir(_srcPath);

            req['_tempPath'] = _path;
            req['_id'] = id;

            cb(null, _srcPath);
        } catch (err) {
            cb(err, '');
        }
    },
    filename: (req, file, cb) => {
        cb(null, file.originalname)
    }
})
const upload = multer({ storage })
const router = express.Router()

router.get("/", (_, res) => {
    res.send("Hello")
})

interface WasmExport {
    name: string,
    length: number
}

router.post("/wasm-upload", upload.single("wasmfile"), async (req, res) => {
    if (!req.file) {
        return res.sendStatus(400)
    }
    console.log(req.file) // file meta

    const { loader } = req.body;
    const importMemory = req.body.importMemory === 'true';
    const sharedMemory = req.body.sharedMemory === 'true';

    if (req.file.mimetype !== "application/wasm") {
        return res.status(400).send("non wasm file")
    }

    const pathToWasm = req.file.path;
    if (!(await fileExists(pathToWasm))) {
        return res.status(500)
    }

    const instantiationOptions: WasmInstantiationOptions = {
        importMemory,
        loader
    }

    if (sharedMemory) {
        instantiationOptions.memoryOptions = {
            sharedMemory: true,
            initial: 1,
            maximum: 1000
        }
    }

    const result = await getWasmExports(pathToWasm, instantiationOptions)

    const { exports, memory } = result;

    const wasmFuncs: WasmExport[] = []
    for (const key in exports) {
        if (typeof exports[key] == "function") {
            const original = exports[key].original ?? exports[key];

            wasmFuncs.push({
                name: key,
                length: original.length
            })
        }
    }

    res.json({
        uuid: req['_id'],
        funcs: wasmFuncs,
        targetFile: req.file.originalname,
        instantiationOptions
    })
})

interface RunSuiteBody {
    exports: {
        exportName: string,
        inputs: ExportInput
    }[],
    instantiationOptions: WasmInstantiationOptions,
    targetFile: string,
    id: string
}

router.post('/run-suite', async (req, res) => {
    try {
        const body: RunSuiteBody = req.body;
        console.log('body:', body)

        const BenchmarkArgs = {
            targetFile: body.targetFile,
            tempDir: getTempDirPath(body.id),
            instantiationOptions: body.instantiationOptions,
            exportArgs: body.exports.map(x => Object.assign({}, x, {
                interval: 100 // todo infer
            })),
        }
        console.log(BenchmarkArgs)
        const results: EnrichedWorkerResult[]|undefined = await benchmarkRunner.run(BenchmarkArgs)

        if(results === undefined){
            return res.status(500).json({})
        }

        const json = {
            instantiationOptions: body.instantiationOptions,
            results
        }

        console.log(json)

        res.json(json);
    } catch (err) {
        res.status(500).json(err)
    }
})

export default router