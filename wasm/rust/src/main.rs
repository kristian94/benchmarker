// $ rustup target add wasm32-wasi
// $ rustc .\src\main.rs --target wasm32-wasi
// $ wasmtime .\main.wasm
// $ wasmtime .\main.wasm --invoke sum(1, 2)

fn main() {
    println!("Hello, world!");
}

#[no_mangle]
pub extern "C" fn sum(x: i32, y: i32) -> i32 {
    x + y
}