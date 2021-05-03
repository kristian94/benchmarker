import { createSlice } from '@reduxjs/toolkit';

export const scenarioSlice = createSlice({
    name: 'Scenarios',
    initialState: {
        Scenarios: [],
        selectedId: null,
        funcs: [],
    },
    reducers: {
        addScenarios: (state, action) => {
            state.Scenarios = action.payload
        },
        selectScenario: (state, action) => {
            state.selectedId = action.payload
        },
        addScenariosFuncs: (state, action) => {
            state.funcs = action.payload.funcs
        }
    },
});

export const { addScenarios, selectScenario, addScenariosFuncs } = scenarioSlice.actions

export default scenarioSlice.reducer;