// small test module

const fibonacci = n => {
    if(n <= 1) return n;
    return fibonacci(n - 2) + fibonacci(n - 1)
}

module.exports = {
    fibonacci
}