import express from "express";
import multer from "multer"
import { v4 as uuidv4 } from "uuid"
import { backendDir, createTempDir, getTempDirPath } from '../lib/fs_util'
import { fileExists } from '../lib/utils'

import {promises as fs} from 'fs';
import bodyParser from 'body-parser';
import * as benchmarkRunner from '../containers/node-wasm-benchmark/runner';

import {posix as path} from 'path';

import { getWasmExports, LoaderEnum, WasmInstantiationOptions } from '../containers/node-wasm-benchmark/container_src/wasm-importer'
import { EnrichedWorkerResult, ExportInput } from "src/containers/node-wasm-benchmark/container_src/types";

interface SuiteState {
    id: string,
    instantiationOptions: WasmInstantiationOptions
}

// serverside suite state
const suites: SuiteState[] = [];

const storage = multer.diskStorage({
    destination: async (req, file, cb) => {
        try{
            const id = uuidv4();

            const _path = await createTempDir(id);
            const _srcPath = path.join(_path, 'src');
            
            await fs.mkdir(_srcPath);
            
            req['_tempPath'] = _path;
            req['_id'] = id;

            cb(null, _srcPath);
        }catch(err){
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

router.get("/ping", (_, res) => {
    res.send("pong")
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

    const {loader} = req.body;
    const importMemory = req.body.importMemory === 'true';

    if (req.file.mimetype !== "application/wasm") {
        return res.status(400).send("non wasm file")
    }

    const pathToWasm = req.file.path;
    if (!(await fileExists(pathToWasm))) {
        return res.status(500)
    }
    const result = await getWasmExports(pathToWasm, {
        importMemory, 
        loader
    })

    const {exports, memory} = result;

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

    suites.push({
        id: req['_id'],
        instantiationOptions: {
            loader,
            importMemory
        }
    });

    res.json({
        uuid: req['_id'],
        funcs: wasmFuncs
    })
})

interface RunSuiteBody {
    exports: {
        exportName: string,
        inputs: ExportInput
    }[],
    targetFile: string,
    id: string
}

router.post('/run-suite', bodyParser.json(), async (req, res) => {
    try{
        const {id} = req.body;
        const body: RunSuiteBody = req.body;

        console.log('body:', body)

        const instantiationOptions: WasmInstantiationOptions = suites.find(x => x.id == id)?.instantiationOptions ?? {
            loader: LoaderEnum.Default,
            importMemory: false
        };

        const BenchmarkArgs = {
            targetFile: body.targetFile,
            tempDir: getTempDirPath(id),
            instantiationOptions: instantiationOptions,
            exportArgs: body.exports.map(x => Object.assign({}, x, {
                interval: 100 // todo infer
            })),
        }

        const results: EnrichedWorkerResult[] = await benchmarkRunner.run(BenchmarkArgs)

        console.log(results)

        res.json(results);
    }catch(err){
        res.status(500).json(err)
    }
})

export default router