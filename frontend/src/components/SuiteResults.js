import React from 'react'
import { useSelector } from 'react-redux'
import Chart from './Chart';

function SuiteResults() {

    const results = useSelector(state => state.suiteResults.results)

    return (
        <div>
            {results.map((x, i) => <div key={i}>
                <h2>{x.exportName}</h2>
                
                <Chart name={x.exportName} 
                    labels={x.snapshots.map(y => Math.round(y.elapsed))} 
                    data={x.snapshots.map(y => Math.round(y.usage.rss / 1000))} 
                />

            </div> )}
        </div>
    )
}

export default SuiteResults