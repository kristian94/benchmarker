import { WasmInstantiationOptions } from "./wasm-importer";

export type ExportInput = any[]

export interface Snapshot {
    elapsed: number,
    usage: NodeJS.MemoryUsage,
    osFreeMemory: number,
    bufferByteLength?: number
}

export interface WorkerResult {
    executionDuration: Number,
    returnValue: any
}

export interface EnrichedWorkerResult extends WorkerResult {
    inputs: ExportInput,
    exportName: string,
    snapshots: Snapshot[]
}

export interface WorkerData {
    wasmPath: string,
    exportName: string,
    inputs: ExportInput,
    dryRun: Number,
    instantiationOptions: WasmInstantiationOptions
}

export enum WorkerMessageType {
    Memory,
    Result
}

export interface WorkerMessage {
    type: WorkerMessageType,
    data: any
}