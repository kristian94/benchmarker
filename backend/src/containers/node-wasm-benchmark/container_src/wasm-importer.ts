

const fs = require('fs').promises;
import * as AssemblyScriptLoader from "@assemblyscript/loader";

export enum LoaderEnum {
    Default = "default",
    AssemblyScript = "assembly_script"
}

interface Loader {
    instantiate: Function
}

const getLoader: (LoaderEnum) => Loader = (en) => {
        switch(en){
            case LoaderEnum.AssemblyScript: return AssemblyScriptLoader
            default: return WebAssembly
        }
    }  

export interface WasmImportResult {
    exports: any,
    memory?: any 
}

export interface WasmInstantiationOptions {
    importMemory: boolean,
    loader: LoaderEnum
}

const defaultOptions: WasmInstantiationOptions = {
    importMemory: false,
    loader: LoaderEnum.Default
}



export const getWasmExportsBackup = fileName => fs.readFile(fileName)
    .then(WebAssembly.instantiate)
    .then(x => x.instance.exports);

export const getWasmExports: (string, wasmInstantiationOptions?) => Promise<WasmImportResult> = 
    async (filePath, options: WasmInstantiationOptions = defaultOptions) => {

        const file = await fs.readFile(filePath);

        const loader = getLoader(options.loader);

        const wModule = await (options.importMemory
            ? loader.instantiate(file, {
                env: {
                    memory: new WebAssembly.Memory({
                        initial: 1,
                        maximum: 1000
                    })
                }
            })
            : loader.instantiate(file))

        return {
            exports: wModule.instance.exports,
            memory: wModule.instance.exports.memory
        }
    }

export default {}