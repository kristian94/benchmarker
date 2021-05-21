// # instantiate a Wasm module and call an exported function "mergeSort"

// ## Basic

WebAssembly.instantiateStreaming(
  fetch("build/sorting.wasm")
).then(result => {
  result.instance.exports.mergeSort(
    numbers
  );
})

// ## AssemblyScript
import instantiate 
  from "assemblyscript-loader"; 
 
instantiate(
  fetch("build/sorting.wasm")
).then(result => {
  result.exports.mergeSort(
    numbers
  )
});

// ## Rust
import init, {mergeSort} 
  from "./pkg/sorting.js";

init()
  .then(() => {
    mergeSort(numbers)
  });