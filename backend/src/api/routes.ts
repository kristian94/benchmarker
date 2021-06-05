import express from "express";
import multer from "multer"
import { v4 as uuidv4 } from "uuid"
import { backendDir, createTempDir, getTempDirPath } from '../lib/fs_util'
import { fileExists } from '../lib/utils'

import { promises as fs } from 'fs';
import * as benchmarkRunner from '../containers/node-wasm-benchmark/runner';

import { posix as path } from 'path';

import { loaders, LoaderEnum } from '../containers/node-wasm-benchmark/container_src/abstract-loader'

import { AggregatedResult, ExportInput } from "src/containers/node-wasm-benchmark/container_src/types";
import { BenchmarkArgs } from "src/containers/node-wasm-benchmark/types";

interface WasmExport {
    name: string,
    length: number
}

const createTempDirMW = () => async (req, res, next) => {
    try {
        const id = uuidv4();

        const _path = await createTempDir(id);
        const _srcPath = path.join(_path, 'src');

        await fs.mkdir(_srcPath);

        req['_tempPath'] = _path;
        req['_srcPath'] = _srcPath;
        req['_id'] = id;

        next()
    } catch (err) {
        next(err)
    }
}

const storage = multer.diskStorage({
    destination: async (req, file, cb) => {
        try {
            const {_srcPath} = req as any as {_srcPath: string};

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



router.post("/wasm-upload", createTempDirMW(), upload.any(), async (req, res) => {
    if (!req.files) {
        return res.sendStatus(400)
    }
    console.log(req.files) // file meta

    const { loader, entryFileIndex } = req.body;

    const loaderInstance = loaders[loader];

    const pathToWasm = req.files[entryFileIndex].path;

    const exports = await loaderInstance.getExports(pathToWasm);

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
        targetFile: req.files[entryFileIndex].originalname
    })
})

interface RunSuiteBody {
    exports: {
        exportName: string,
        inputs: ExportInput
    }[],
    loader: string,
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
            loader: body.loader as LoaderEnum,
            exportArgs: body.exports.map(x => Object.assign({}, x, {
                interval: 100 // todo infer
            })),
        }
        console.log(BenchmarkArgs)
        const results: AggregatedResult[] | undefined = await benchmarkRunner.run(BenchmarkArgs)

        if (results === undefined) {
            return res.status(500).json({})
        }

        const json = {
            instantiationOptions: {
                loader: body.loader
            },
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
    loader: string
}

const scenarios: Scenario[] = [
    {
        id: 1,
        name: "Bubble Sort Optimised",
        folder: "bubble_sort_unchecked",
        file: "bubble_sort_unchecked.wasm",
        loader: LoaderEnum.AssemblyScript
    },
    {
        id: 2,
        name: "Bubble Sort",
        folder: "bubble_sort",
        file: "bubble_sort.wasm",
        loader: LoaderEnum.AssemblyScript
    },
    {
        id: 3,
        name: "Merge Sort v1",
        folder: "merge_sort_v1",
        file: "merge_sort_v1.wasm",
        loader: LoaderEnum.AssemblyScript
    },
    {
        id: 4,
        name: "Merge Sort v2",
        folder: "merge_sort_v2",
        file: "merge_sort_v2.wasm",
        loader: LoaderEnum.AssemblyScript
    },
    {
        id: 5,
        name: "Merge Sort v2 minimal",
        folder: "merge_sort_v2_minimal",
        file: "merge_sort_v2_minimal.wasm",
        loader: LoaderEnum.AssemblyScript
    },
    {
        id: 6,
        name: "Merge Sort v2 stub",
        folder: "merge_sort_v2_stub",
        file: "merge_sort_v2_stub.wasm",
        loader: LoaderEnum.AssemblyScript
    },
    {
        id: 7,
        name: "Merge Sort v2 optimized",
        folder: "merge_sort_v2_optimized",
        file: "merge_sort_v2_optimized.wasm",
        loader: LoaderEnum.AssemblyScript
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

    const loader = loaders[scenario.loader];

    const exports = await loader.getExports(getTempDirPath(`${scenario.folder}/src/${scenario.file}`));

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
        loader: scenario.loader
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
            loader: scenario.loader as LoaderEnum,
            exportArgs: [{
                exportName: body.func,
                inputs: [body.input],
                interval: 10 // todo infer
            }],
        }
        console.log(BenchmarkArgs)
        const results: AggregatedResult[] | undefined = await benchmarkRunner.runScenario(BenchmarkArgs)
        if (results === undefined)  return res.status(500).json({"error": "benchmark error"})

        const json = {
            instantiationOptions: {
                loader: scenario.loader
            },
            results
        }
        console.log(json)
        res.json(json);
    } catch (err) {
        res.status(500).json(err)
    }
})

export default router