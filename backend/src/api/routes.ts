import express from "express";
import multer from "multer"

const upload = multer({dest: 'uploads/'})
const router = express.Router()

router.get("/", (_, res) => {
    res.send("Hello")
})

router.get("/ping", (_, res) => {
    res.send("pong")
})

router.post("/wasm-upload", upload.single("wasmfile"), (req, res) => {
    if (!req['file']) {
        res.sendStatus(400)
    }
    console.log(req['file']) // file meta
    /*{
        fieldname: 'wasmfile',
        originalname: 'module.wasm',
        encoding: '7bit',
        mimetype: 'application/wasm',
        destination: 'uploads/',
        filename: 'dd780d44a785b39f70ac3fb103aab17a',
        path: 'uploads\\dd780d44a785b39f70ac3fb103aab17a',
        size: 98
    }*/
    
    console.log(req.body) // Rest of fields

    res.send("den er bra")
})

export default router