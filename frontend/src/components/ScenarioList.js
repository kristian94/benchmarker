import React from 'react'
import { useSelector, useDispatch } from 'react-redux'
import { getScenarioMeta, runScenario } from '../api/dataApi'
import Button from './Button'


function Scenarios() {
    const dispatch = useDispatch()
    const scenarios = useSelector(state => state.scenarios.Scenarios)
    const funcs = useSelector(state => state.scenarios.funcs)
    const selectedId = useSelector(state => state.scenarios.selectedId)

    const selectScenario = (s) => {
        dispatch(getScenarioMeta(s.id))
    }

    const run = (fname) => {
        const input = Number(document.querySelector(`input[name=${fname}]`).value);
        console.log(selectedId)
        const body = {
            id: selectedId,
            func: fname,
            input
        }

        dispatch(runScenario(body))
    }

    return (
        <>
            <div>
                {
                    scenarios.map((p, i) => {
                        return <div key={i} className="my-3"><Button text={p.name} onClick={() => selectScenario(p)} /></div>
                    })
                }
            </div>
            <div>
                <p className="text-xl">Exported functions:</p>
                <div className="px-3">
                    {
                        funcs.map((f, i) =>
                            <div key={i} data-export-name={f.name}>
                                <p className="font-mono text-lg mb-1">{f.name}</p>
                                {Array(f.length).fill(0).map((_, i) =>
                                    <input key={i} className="input-arg text-black mb-1 py-1 px-2 text-sm rounded" name={f.name} />
                                )}
                                <Button classes="ml-2 text-sm" text="run" px={3} py={1} rounded="rounded-lg" onClick={() => run(f.name)} />
                            </div>)
                    }
                </div>
            </div>
        </>
    )
}

export default Scenarios