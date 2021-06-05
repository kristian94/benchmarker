import { ExportInput } from "./container_src/types";
import { LoaderEnum } from "./container_src/abstract-loader";

export interface BenchmarkExportArgs {
    exportName: string,
    inputs: ExportInput,
    interval: number,
}

export interface BenchmarkArgs {
    targetFile: string,
    tempDir: string,
    exportArgs: BenchmarkExportArgs[],
    loader: LoaderEnum
}