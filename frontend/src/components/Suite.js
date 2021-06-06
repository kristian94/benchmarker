import React from 'react'
import { useSelector, useDispatch } from 'react-redux'
import { runSuite } from '../api/dataApi'
import Button from './Button'

function Suite() {
    const dispatch = useDispatch()

    const wasmFileId = useSelector(state => state.wasmMeta.wasmFileId)
    const targetFile = useSelector(state => state.wasmMeta.targetFile)
    // const instantiationOptions = useSelector(state => state.wasmMeta.instantiationOptions)
    const loader = useSelector(state => state.loaderConfig.selected)

    const customSuite = useSelector(state => state.wasmMeta.customSuite)
    const running = useSelector(state => state.suiteResults.running)

    const runTestSuite = () => {
        const body = {
            id: wasmFileId,
            targetFile,
            exports: customSuite,
            loader
        }

        dispatch(runSuite(body))
    }

    if (!customSuite.length) {
        return (<></>)
    }

    return (
        <div className="grid grid-cols-1 gap-8">
            <div className="text-xl">3. Confirm</div>
            <div className="grid grid-cols-1 gap-2">
                {
                    customSuite.map((x, i) => 
                        <div key={i}>
                            <span>{ x.exportName }</span>
                            <span className="font-mono">({x.inputs.join(',')})</span>
                        </div>
                    )
                }
            </div>
            <Button text="Run suite" onClick={runTestSuite} disabled={!!running} />
        </div>
    )
}

export default Suite