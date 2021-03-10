const test = require('ava');
const { CargoToml } = require('./cargo_toml');

const getContent = () => 
`
[package]
name = "wasm_01"
version = "0.1.0"
edition = "2018"
`

const getContentWDirectives = () => `
[package]
name = "wasm_01"
version = "0.1.0"
edition = "2018"

[dependencies]
time = "0.1.12"
regex = "0.1.41"

[prod]
cat = "red"
`

test('addValue - adds a line', 
    t => {
        const a = new CargoToml(getContent());
        
        const b = a.addValue('a', '1')

        t.is(b.content, 
`
[package]
name = "wasm_01"
version = "0.1.0"
edition = "2018"
a = "1"`)
});


test('addValue - with directive that is missing, adds directive and a line', 
    t => {
        const a = new CargoToml(getContentWDirectives());
        
        const b = a.addValue('dog', 'blue', 'dev')

        t.is(b.content, 
`
[package]
name = "wasm_01"
version = "0.1.0"
edition = "2018"

[dependencies]
time = "0.1.12"
regex = "0.1.41"

[prod]
cat = "red"

[dev]
dog = "blue"`)
});

test('addValue - with directive that is present, adds a line under the correct directive', 
    t => {
        const a = new CargoToml(getContentWDirectives());
        
        const b = a.addValue('dog', 'blue', 'prod')

        t.is(b.content, 
`
[package]
name = "wasm_01"
version = "0.1.0"
edition = "2018"

[dependencies]
time = "0.1.12"
regex = "0.1.41"

[prod]
dog = "blue"
cat = "red"
`)
});

export {}