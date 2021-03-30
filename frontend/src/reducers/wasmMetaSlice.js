import { createSlice } from '@reduxjs/toolkit'

export const wasmMetaSlice = createSlice({
    name: "Wasm Metadata",
    initialState: {
        wasmFileId: null,
        funcs: [],
        targetFile: '',
        instantiationOptions: null,
        customSuite: []
    },
    reducers: {
        setWasmMeta: (state, action) => {
            console.log("set state", action)
            state.wasmFileId = action.payload.uuid
            state.funcs = action.payload.funcs
            state.targetFile = action.payload.targetFile
            state.instantiationOptions = action.payload.instantiationOptions
        },
        addFunctionToSuite: (state, action) => {
            console.log("add function", action)
            state.customSuite.push(action.payload)
        },
        clearSuite: (state, action) => {
            state.customSuite = []
        }
    }
})

export const { setWasmMeta, addFunctionToSuite, clearSuite } = wasmMetaSlice.actions

export default wasmMetaSlice.reducer