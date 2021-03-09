#[no_mangle]
pub extern "C" fn sum(x: i32, y: i32) -> i32 {
    x + y
}

#[no_mangle]
pub extern fn fibonacci(x: i32) -> i32 {
    match x {
        0 => 0,
        1 => 1,
        _ => fibonacci(x - 1) + fibonacci(x - 2),
    }
}