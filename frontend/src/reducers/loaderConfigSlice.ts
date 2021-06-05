import { createSlice } from '@reduxjs/toolkit';
import { LoaderConfig, LoaderConfigState } from '../interfaces/loader-config'


const loaderConfigs: LoaderConfig[] = [
    {
        id: 'default',
        name: 'Default',
        files: [
            {
                extension: '.wasm',
                name: '{name}.wasm'
            }
        ]
    },
    {
        id: 'assembly_script',
        name: 'AssemblyScript',
        files: [
            {
                extension: '.wasm',
                name: '{name}.wasm'
            }
        ]
    },
    {
        id: 'wasm_pack',
        name: 'Rust (Wasm pack)',
        files: [
            {
                extension: '.wasm',
                name: '{name}_bg.wasm'
            },
            {
                extension: '.js',
                name: '{name}.js'
            },
            {
                extension: '.js',
                name: '{name}_bg.js'
            }
        ],
        entryFileIndex: 1
    }
]

const initialState: LoaderConfigState ={
    loaderConfigs,
    selected: loaderConfigs[0].id
}

export const scenarioSlice = createSlice({
    name: 'LoaderConfigs',
    initialState,
    reducers: {
        setSelected: (state, action) => {
            return Object.assign({}, state, {
                selected: action.payload
            })
        }
    },
});

export const { setSelected } = scenarioSlice.actions

export default scenarioSlice.reducer;