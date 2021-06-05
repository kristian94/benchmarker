import { createSlice } from '@reduxjs/toolkit';
import { FileSelectionState } from '../interfaces/file-select';


const initialState: FileSelectionState = {
    filesSelected: []
}

const insertAt = (array, index, element, fillValue = undefined) => {

    if(index == array.length) return array.concat(element);
    if(index > array.length) {
        const fillN = index - array.length;
        return array.concat(new Array(fillN).fill(fillValue)).concat([element])
    }

    return array.slice(0, index).concat([element]).concat(array.slice(index + 1))
}

export const scenarioSlice = createSlice({
    name: 'LoaderConfigs',
    initialState,
    reducers: {
        addFile: (state, action) => {
            const {index, file} = action.payload;
            return Object.assign({}, state, {
                filesSelected: insertAt(state.filesSelected, index, file)
            })
        },
        reset: (state, action) => {
            return Object.assign({}, state, {
                filesSelected: []
            })
        },
    },
});

export const { reset, addFile } = scenarioSlice.actions

export default scenarioSlice.reducer;