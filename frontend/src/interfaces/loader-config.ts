interface FileUploadConfig {
    extension: string,
    name: string
}

type LoaderConfigId = string

export interface LoaderConfig {
    id: LoaderConfigId
    name: string
    files: FileUploadConfig[],
    entryFileIndex?: number
}

export interface LoaderConfigState {
    loaderConfigs: LoaderConfig[],
    selected: LoaderConfigId
}