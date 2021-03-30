import { createSlice } from '@reduxjs/toolkit'

export const suiteResultSlice = createSlice({
    name: "Benchmark Suite Results",
    initialState: {
        results: [],
        sharedMemory: false,
        running: false
    },
    reducers: {
        setSuiteResults: (state, action) => {
            state.results = action.payload.results
            state.sharedMemory = action.payload.instantiationOptions.memoryOptions?.sharedMemory ?? false
            state.running = false
        },
        setRunning: (state, action) => {
            state.running = action.payload
        }
    }
})

export const { setSuiteResults, setRunning } = suiteResultSlice.actions

export default suiteResultSlice.reducer