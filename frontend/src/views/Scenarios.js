import React, { useEffect } from 'react'
import { useDispatch } from 'react-redux'
import { getScenarios } from '../api/dataApi'
import ScenarioList from '../components/ScenarioList'
import SuiteResults from '../components/SuiteResults'

function Scenarios() {
    const dispatch = useDispatch()

    // Only executed once when mounting
    useEffect(() => {
        dispatch(getScenarios())
    }, [dispatch])

    return (
        <div className="px-8 py-4">
            <h1 className="font-bold mb-12 text-6xl">Scenarios</h1>
            <div className="grid grid-cols-3 mb-16">
                <ScenarioList />
            </div>
            <SuiteResults />
        </div>
    )
}

export default Scenarios