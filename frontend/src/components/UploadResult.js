import React from 'react'
import { useSelector, useDispatch } from 'react-redux'
import { addFunctionToSuite } from '../reducers/wasmMetaSlice'
import Button from './Button'

function UploadResult() {
    const dispatch = useDispatch()

    const wasmFileId = useSelector(state => state.wasmMeta.wasmFileId)
    const wasmFuncs = useSelector(state => state.wasmMeta.funcs)

    const addToSuite = (functionName) => {
        const inputs = Array.from(document.querySelectorAll(`input[name=${functionName}]`)).map(x => Number(x.value));
        dispatch(addFunctionToSuite({
            exportName: functionName,
            inputs: inputs
        }))
    }
    
    if (!wasmFileId && !wasmFuncs?.length) {
        return (<></>)
    }

    let wasmFileIdEl = <p className="mb-3"><span className="rounded bg-purple-600 text-white py-1 px-2 text-sm">{ wasmFileId }</span></p>
    
    if (wasmFileId && wasmFuncs > 0) {
        return (
            <div>
                { wasmFileIdEl }
                <p className="text-xl">Module does not not have any exported functions</p>
            </div>
        )
    }

    return (
        <div className="grid grid-cols-1 gap-8">
            <p className="text-xl">2. Select inputs</p>
            <div className="grid grid-cols-1 gap-2">
                {
                    wasmFuncs.map((f, i) =>
                        <div key={i} data-export-name={f.name}>
                            <p className="font-mono text-lg mb-1">{f.name}</p>
                            {Array(f.length).fill(0).map((_, i) => 
                                <input key={i} className="input-arg text-black mb-1 py-1 px-2 text-sm rounded" name={f.name} />
                            )}
                            <Button classes="ml-2 text-sm" text="+" px={3} py={1} rounded="rounded-lg" onClick={() => addToSuite(f.name)} />
                        </div>) 
                }
            </div>
        </div>
    )
}

export default UploadResult