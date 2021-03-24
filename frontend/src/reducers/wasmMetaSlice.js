import { createSlice } from '@reduxjs/toolkit'

export const wasmMetaSlice = createSlice({
    name: "Wasm Metadata",
    initialState: {
        wasmFileId: null,
        funcs: [],
    },
    reducers: {
        setWasmMeta: (state, action) => {
            console.log("set state", action)
            state.wasmFileId = action.payload.uuid
            state.funcs = action.payload.funcs
            console.log(state)
        }
    }
})

export const { setWasmMeta } = wasmMetaSlice.actions

export default wasmMetaSlice.reducer