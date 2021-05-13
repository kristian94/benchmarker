// # instantiate a Wasm module and call an exported function "mergeSort"

// ## Basic

WebAssembly
  .instantiateStreaming(
    fetch("sorting.wasm"), 
    {})
  .then(obj => {
    obj.instance.exports.mergeSort(numbers);
  })


// ## Rust
import init, {mergeSort} 
    from "./pkg/sorting.js";

init()
  .then(() => {
    mergeSort(numbers)
  });


// ## AssemblyScript
import load 
    from "assemblyscript-loader"; 
 
load("./build/sorting.wasm")
  .then(module => {
    module.exports.mergeSort(numbers)
  });