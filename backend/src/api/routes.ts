import { Router } from "https://deno.land/x/oak@v6.5.0/mod.ts";

const router = new Router()

router.get("/", (ctx) => {
    ctx.response.body = "Hello"
})

router.get("/ping", (ctx) => {
    ctx.response.body = "pong"
})

router.post("/wasm-upload", ( async ctx => {
    // WIP
    const body = ctx.request.body({ type: 'form-data'})
    console.log(body)
    const formData = await body.value.read({ maxSize: 5000000 });
    console.log(formData)
    
    ctx.response.body = "den er bra"
}))

export default router