export interface BenchmarkExportArgs {
    exportName: String,
    input: any,
    interval: Number
}

export interface BenchmarkArgs {
    targetFile: String,
    tempDir: String,
    exportArgs: BenchmarkExportArgs[]
}