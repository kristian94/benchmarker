import express from "express"
import bodyParser from "body-parser"
import morgan from "morgan"

import router from "./routes"

const port = 8000
const app = express()

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())
app.use(morgan(':method :url :status :res[content-length] - :response-time ms'))
app.use(router)

console.log(`App started on port ${port}`)
app.listen({ port });