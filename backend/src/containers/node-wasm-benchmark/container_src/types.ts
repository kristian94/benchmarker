import { LoaderEnum } from "./abstract-loader";

export type ExportInput = any[]

export interface Snapshot {
    elapsed: number,
    rss: number
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

export interface AggregatedResult extends EnrichedWorkerResult {
    rssStdDev: number,
    durationrssStdDev: number,
    outliers: number
}

export interface WorkerData {
    wasmPath: string,
    exportName: string,
    inputs: ExportInput,
    loader: LoaderEnum
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