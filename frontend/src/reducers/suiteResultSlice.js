import { createSlice } from '@reduxjs/toolkit'

export const suiteResultSlice = createSlice({
    name: "Benchmark Suite Results",
    initialState: {
        results: []
    },
    reducers: {
        setSuiteResults: (state, action) => {
            state.results = action.payload
        }
    }
})

export const { setSuiteResults } = suiteResultSlice.actions

export default suiteResultSlice.reducer