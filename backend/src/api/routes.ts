import express from "express";
import multer from "multer"
import { v4 as uuidv4 } from "uuid"
import { backendDir, createTempDir, getTempDirPath } from '../lib/fs_util'
import { fileExists } from '../lib/utils'

import { promises as fs } from 'fs';
import * as benchmarkRunner from '../containers/node-wasm-benchmark/runner';

import { posix as path } from 'path';

import { getWasmExports, LoaderEnum, WasmInstantiationOptions } from '../containers/node-wasm-benchmark/container_src/wasm-importer'
import { AggregatedResults, ExportInput } from "src/containers/node-wasm-benchmark/container_src/types";
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
            maximum: 73142 // approx 4 GB
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

        const BenchmarkArgs: BenchmarkArgs = {
            targetFile: body.targetFile,
            tempDir: getTempDirPath(body.id),
            instantiationOptions: body.instantiationOptions,
            exportArgs: body.exports.map(x => Object.assign({}, x, {
                interval: 100 // todo infer
            })),
        }
        console.log(BenchmarkArgs)
        const results: AggregatedResults[] | undefined = await benchmarkRunner.run(BenchmarkArgs)

        if (results === undefined) {
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

interface Scenario {
    id: number,
    name: string,
    folder: string,
    file: string,
    instantiationOptions: WasmInstantiationOptions
}

const scenarios: Scenario[] = [
    {
        id: 1,
        name: "Bubble Sort Optimised",
        folder: "bubble_sort_unchecked",
        file: "bubble_sort_unchecked.wasm",
        instantiationOptions: {
            importMemory: false,
            loader: LoaderEnum.AssemblyScript
        }
    },
    {
        id: 2,
        name: "Bubble Sort",
        folder: "bubble_sort",
        file: "bubble_sort.wasm",
        instantiationOptions: {
            importMemory: false,
            loader: LoaderEnum.AssemblyScript
        }
    },
    {
        id: 3,
        name: "Merge Sort v1",
        folder: "merge_sort_v1",
        file: "merge_sort_v1.wasm",
        instantiationOptions: {
            importMemory: false,
            loader: LoaderEnum.AssemblyScript
        }
    },
    {
        id: 4,
        name: "Merge Sort v2",
        folder: "merge_sort_v2",
        file: "merge_sort_v2.wasm",
        instantiationOptions: {
            importMemory: false,
            loader: LoaderEnum.AssemblyScript
        }
    }
]

router.get('/scenarios', (req, res) => {
    res.json(scenarios)
})

router.get('/scenarios/:id', async (req, res) => {
    const id = Number(req.params.id)

    console.log(id)
    if (!id || isNaN(id)) return res.sendStatus(500)

    const scenario = scenarios.find(s => s.id === id)
    if (!scenario) return res.sendStatus(500)

    const result = await getWasmExports(getTempDirPath(`${scenario.folder}/src/${scenario.file}`), scenario.instantiationOptions)

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
        uuid: id,
        funcs: wasmFuncs,
        targetFile: scenario.file,
        instantiationOptions: scenario.instantiationOptions
    })
})

interface RunScenarioBody {
    id: number,
    func: string,
    input: number
}

router.post('/run-scenario', async (req, res) => {
    try {
        const body: RunScenarioBody = req.body;
        console.log('body:', body)

        const scenario = scenarios.find(s => s.id === body.id)
        if (!scenario) return res.sendStatus(500)

        const BenchmarkArgs: BenchmarkArgs = {
            targetFile: scenario.file,
            tempDir: getTempDirPath(`${scenario.folder}`),
            instantiationOptions: scenario.instantiationOptions,
            exportArgs: [{
                exportName: body.func,
                inputs: [body.input],
                interval: 100 // todo infer
            }],
        }
        console.log(BenchmarkArgs)
        const results: AggregatedResults[] | undefined = await benchmarkRunner.runScenario(BenchmarkArgs)
        if (results === undefined)  return res.status(500).json({"error": "benchmark error"})

        const json = {
            instantiationOptions: scenario.instantiationOptions,
            results
        }
        console.log(json)
        res.json(json);
    } catch (err) {
        res.status(500).json(err)
    }
})

export default router