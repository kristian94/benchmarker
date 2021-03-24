import React from 'react'
import { useSelector } from 'react-redux'

function UploadResult() {
    const wasmFileId = useSelector(state => state.wasmMeta.wasmFileId)
    const wasmFuncs = useSelector(state => state.wasmMeta.funcs)
    
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
                    wasmFuncs.map((f, i) => <p className="font-mono text-lg" key={i}>{f}</p>)
                }
            </div>
        </div>
    )
}

export default UploadResult