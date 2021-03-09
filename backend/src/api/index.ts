import express from "express"
import cors from "cors"
import morgan from "morgan"

import router from "./routes"

const port = 8000
const app = express()

app.use(cors())

// parse application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: false }))

// parse application/json
app.use(express.json())
app.use(morgan(':method :url :status :res[content-length] - :response-time ms'))
app.use(router)

console.log(`App started on port ${port}`)
app.listen({ port });