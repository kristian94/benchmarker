export interface WorkerResult {
    executionDuration: Number,
    returnValue: any
}

export interface EnrichedWorkerResult extends WorkerResult {
    input: any,
    exportName: string,
    snapshots: NodeJS.MemoryUsage[]
}

export interface WorkerData {
    wasmPath: string,
    exportName: string,
    input: string,
    dryRun: Number
}
