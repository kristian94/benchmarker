import { WasmInstantiationOptions } from "./wasm-importer";

export type ExportInput = any[]

export interface WorkerResult {
    executionDuration: Number,
    returnValue: any
}

export interface EnrichedWorkerResult extends WorkerResult {
    inputs: ExportInput,
    exportName: string,
    snapshots: NodeJS.MemoryUsage[]
}

export interface WorkerData {
    wasmPath: string,
    exportName: string,
    inputs: ExportInput,
    dryRun: Number,
    instantiationOptions: WasmInstantiationOptions
}
