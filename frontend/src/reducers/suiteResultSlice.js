import { createSlice } from '@reduxjs/toolkit'

export const suiteResultSlice = createSlice({
    name: "Wasm Metadata",
    initialState: {
        results: []
    },
    reducers: {
        setResult: (state, action) => {
            console.log("set state", action)
            state.results = action.payload.results
            console.log(state)
        }
    }
})

export const { setSuiteResults } = suiteResultSlice.actions

export default suiteResultSlice.reducer