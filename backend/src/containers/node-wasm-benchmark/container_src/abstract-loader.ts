

const fs = require('fs').promises;
import * as AssemblyScriptLoader from "@assemblyscript/loader";

export enum LoaderEnum {
    Default = "default",
    AssemblyScript = "assembly_script"
}

interface Loader {
    instantiate: Function
}

 

export interface WasmLoadResult {
    exports: any,
    memory?: any
}

export interface WasmInstantiationOptions {
    importMemory: boolean,
    loader: LoaderEnum,
    memoryOptions?: {
        sharedMemory: boolean,
        initial: number,
        maximum: number
    }
}

const defaultOptions: WasmInstantiationOptions = {
    importMemory: false,
    loader: LoaderEnum.Default,
    memoryOptions: {
        sharedMemory: false,
        initial: 1,
        maximum: 73142 // approx 4 GB
    }
}

const getLoader: (LoaderEnum) => Loader = (en) => {
    switch(en){
        case LoaderEnum.AssemblyScript: return AssemblyScriptLoader
        default: return WebAssembly
    }
} 

export const load: (string, wasmInstantiationOptions?) => Promise<WasmLoadResult> = 
    async (filePath, options: WasmInstantiationOptions = defaultOptions) => {

        const file = await fs.readFile(filePath);

        const loader = getLoader(options.loader);

        const module = await loader.instantiate(file)

        return module.instance.exports
    }

export default {}