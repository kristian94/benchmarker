import express from "express";
import multer from "multer"
import { v4 as uuidv4 } from "uuid"
import { backendDir, createTempDir } from '../lib/fs_util'
import fs from 'fs'

import { getWasmExports, LoaderEnum } from '../containers/node-wasm-benchmark/container_src/wasm-importer'

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        createTempDir(uuidv4())
            .then(_path => {
                req['_tempPath'] = _path;
                cb(null, _path);
            })
            .catch(err => cb(err, ''))
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

router.post("/wasm-upload", upload.single("wasmfile"), async (req, res) => {
    if (!req.file) {
        return res.sendStatus(400)
    }
    console.log(req.file) // file meta

    const {loader} = req.body;

    if (req.file.mimetype !== "application/wasm") {
        return res.status(400).send("non wasm file")
    }

    const pathToWasm = req.file.path;
    if (!fs.existsSync(pathToWasm)) {
        return res.status(500)
    }
    const result = await getWasmExports(pathToWasm, {
        importMemory: true,
        loader: loader
    })

    const {exports, memory} = result;

    const wasmFuncs: string[] = []
    for (const e in exports) {
        if (typeof exports[e] == "function") {
            wasmFuncs.push(e)
        }
    }
    res.json({
        uuid: req.file.filename,
        funcs: wasmFuncs
    })
})

export default router