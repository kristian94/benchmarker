import React from 'react'
import { useSelector, useDispatch } from 'react-redux'
import { runSuite } from '../api/dataApi'
import Button from './Button'

function UploadResult() {
    const dispatch = useDispatch()

    const wasmFileId = useSelector(state => state.wasmMeta.wasmFileId)
    const wasmFuncs = useSelector(state => state.wasmMeta.funcs)

    const runTestSuite = () => {
        const exportContainers = Array.from(document.querySelectorAll('[data-export-name]'));

        const body = {
            id: wasmFileId,
            targetFile: 'optimized.wasm',
            exports: exportContainers.map(el => {
                const name = el.getAttribute('data-export-name');
                const inputs = Array.from(document.querySelectorAll(`input[name=${name}]`));

                return {
                    exportName: name,
                    inputs: inputs.map(x => Number(x.value))
                }
            })
        }

        dispatch(runSuite(body))
    }
    
    if (!wasmFileId && !wasmFuncs?.length) {
        return (<></>)
    }

    let wasmFileIdEl = <p className="mb-3"><span className="rounded bg-purple-600 text-white py-1 px-2 text-sm">{ wasmFileId }</span></p>
    
    if (wasmFileId && wasmFuncs > 0) {
        return (
            <div>
                { wasmFileIdEl }
                <p className="text-xl">Module doesn not have any exported functions</p>
            </div>
        )
    }

    return (
        <div>
            { wasmFileIdEl }
            <p className="text-xl">Exported functions:</p>
            <div className="px-3">

                {
                    wasmFuncs.map((f, i) =>
                        <div key={i} data-export-name={f.name}>
                            <p className="font-mono text-lg mb-1">{f.name}</p>
                            {Array(f.length).fill(0).map((_, i) => <input key={i} className="input-arg text-black mb-1 py-1 px-2 text-sm rounded" name={f.name} />)}
                        </div>) 
                }
            </div>
            <div className="mt-2">
                <Button text="Submizzle" onClick={runTestSuite} />
            </div>
            {/* <button onClick={runTestSuite}>Submizzle</button> */}
        </div>
    )
}

export default UploadResult