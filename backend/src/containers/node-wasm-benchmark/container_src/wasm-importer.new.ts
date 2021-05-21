// const fs = require('fs').promises;
// import * as AssemblyScriptLoader from "@assemblyscript/loader";

// export enum LoaderEnum {
//     Default = "default",
//     AssemblyScript = "assembly_script",
//     Rust = "rust"
// }

// // interface Loader {
// //     instantiate: Function
// // }

// type Loader = (string) => Promise<Object>; 

// const loaders = {
//     [LoaderEnum.Default]: async filePath => {
//         const file =        await fs.readFile(filePath);
//         const instance =    await WebAssembly.instantiate(file);
//         return instance.instance.exports;
//     },
//     [LoaderEnum.AssemblyScript]: async filePath => {
//         const file =        await fs.readFile(filePath);
//         const instance =    await AssemblyScriptLoader.instantiate(file);
//         return instance.instance.exports;
//     }
// }

// const getLoader: (LoaderEnum) => Loader = (en) => loaders[en] ?? loaders[LoaderEnum.Default];

// export interface WasmImportResult {
//     exports: any
// }

// export interface WasmInstantiationOptions {
//     loader: LoaderEnum
// }

// const defaultOptions: WasmInstantiationOptions = {
//     loader: LoaderEnum.Default
// }

// export const getWasmExports: (string, wasmInstantiationOptions) => Promise<WasmImportResult> = 
//     async (filePath, options: WasmInstantiationOptions = defaultOptions) => {

//         const file = await fs.readFile(filePath);

//         const loader = getLoader(options.loader);

//         const wModule = await loader.instantiate(file);

//         return {
//             exports: wModule.instance.exports
//         }
//     }

// export default {}