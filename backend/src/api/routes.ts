import express from "express";
import multer from "multer"
import { v4 as uuidv4 } from "uuid"
import { backendDir } from '../containers/fs_util'
import fs from 'fs'

import { getWasmExports } from '../containers/node-wasm-benchmark/container_src/wasm'

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'uploads/')
    },
    filename: (req, file, cb) => {
        cb(null, `${uuidv4()}.wasm`)
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

    if (req.file.mimetype !== "application/wasm") {
        return res.status(400).send("non wasm file")
    }

    let pathToWasm = `${backendDir}/${req.file.path}`
    if (!fs.existsSync(pathToWasm)) {
        return res.status(500)
    }
    let wasmExports = await getWasmExports(pathToWasm)
    let wasmFuncs: string[] = []
    for (let e in wasmExports) {
        if (typeof wasmExports[e] == "function") {
            wasmFuncs.push(e)
        }
    }
    res.json({
        uuid: req.file.filename,
        funcs: wasmFuncs
    })
})

export default router