import React from 'react'
import { useSelector, useDispatch } from 'react-redux'
import { runSuite } from '../api/dataApi'
import Button from './Button'

function Suite() {
    const dispatch = useDispatch()

    const wasmFileId = useSelector(state => state.wasmMeta.wasmFileId)
    const targetFile = useSelector(state => state.wasmMeta.targetFile)
    const instantiationOptions = useSelector(state => state.wasmMeta.instantiationOptions)
    const customSuite = useSelector(state => state.wasmMeta.customSuite)
    const running = useSelector(state => state.suiteResults.running)

    const runTestSuite = () => {
        const body = {
            id: wasmFileId,
            targetFile,
            exports: customSuite,
            instantiationOptions
        }

        dispatch(runSuite(body))
    }

    if (!customSuite.length) {
        return (<></>)
    }

    return (
        <div>
            <div className="text-xl">Suite</div>
            {
                customSuite.map((x, i) => 
                    <div key={i}>
                        <span>{ x.exportName }</span>
                        <span>({x.inputs.join(',')})</span>
                    </div>
                )
            }
            <div className="mt-2">
                <Button text="Submit" onClick={runTestSuite} disabled={!!running} />
            </div>
        </div>
    )
}

export default Suite