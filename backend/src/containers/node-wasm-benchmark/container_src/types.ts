import { WasmInstantiationOptions } from "./wasm-importer";

export type ExportInput = any[]

export interface Snapshot {
    elapsed: number,
    usage: {
        rss: number
    }
}

export interface WorkerResult {
    executionDuration: number,
    returnValue: any
}

export interface EnrichedWorkerResult extends WorkerResult {
    inputs: ExportInput,
    exportName: string,
    snapshots: Snapshot[],
    maxRss: number,
}

export interface AggregatedResults extends EnrichedWorkerResult {
    stdDev: number,
    outliers: number
}

export interface WorkerData {
    wasmPath: string,
    exportName: string,
    inputs: ExportInput,
    instantiationOptions: WasmInstantiationOptions
}

export enum WorkerMessageType {
    Memory,
    Result,
    Continue
}

export interface WorkerMessage {
    type: WorkerMessageType,
    data: any
}