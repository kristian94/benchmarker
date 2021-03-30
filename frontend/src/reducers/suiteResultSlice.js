import { createSlice } from '@reduxjs/toolkit'

export const suiteResultSlice = createSlice({
    name: "Benchmark Suite Results",
    initialState: {
        results: [],
        sharedMemory: false
    },
    reducers: {
        setSuiteResults: (state, action) => {
            state.results = action.payload.results
            state.sharedMemory = action.payload.instantiationOptions.memoryOptions?.sharedMemory ?? false
        }
    }
})

export const { setSuiteResults } = suiteResultSlice.actions

export default suiteResultSlice.reducer