import * as AssemblyScriptLoader from "@assemblyscript/loader";
import {promises as fs} from 'fs';

export enum LoaderEnum {
    Default = "default",
    AssemblyScript = "assembly_script",
    WasmPack = "wasm_pack"
}

export interface Loader {
    id: string,
    name: string,
    getExports: (entryFilePath: string) => Promise<any>,
}

const defaultLoader: Loader = {
    id: 'default',
    name: 'Default',
    async getExports(entryFilePath){
        const file = await fs.readFile(entryFilePath);
        const module = await WebAssembly.instantiate(file, {});
        return module.instance.exports;
    }
}

const assemblyScriptLoader: Loader = {
    id: 'assembly_script',
    name: 'AssemblyScript',
    async getExports(entryFilePath){
        const file = await fs.readFile(entryFilePath);
        const module = await AssemblyScriptLoader.instantiate(file);
        return module.instance.exports;
    }
}

const wasmPackLoader: Loader = {
    id: 'wasm_pack',
    name: 'Wasm Pack (Rust)',
    async getExports(entryFilePath){
        const jsMod = require(/^\.\/|^\/|^[A-Z]:/.test(entryFilePath) 
        ? entryFilePath 
        : './' + entryFilePath);
        
        const keys = Object.keys(jsMod).filter(x => !x.startsWith('__'));

        return keys.reduce((acc, key) => Object.assign(acc, {
            [key]: jsMod[key]
        }),{})
    }
}

export const loaders: Record<string, Loader> = [
    defaultLoader,
    assemblyScriptLoader,
    wasmPackLoader

].reduce((acc, cur) => Object.assign(acc, {[cur.id]: cur }), {});