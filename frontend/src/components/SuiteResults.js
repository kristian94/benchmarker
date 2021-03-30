import React from 'react'
import { useSelector } from 'react-redux'
import Chart from './Chart';

const toMb = x => x / 1024 / 1024;

function SuiteResults() {

    const results = useSelector(state => state.suiteResults.results)
    const sharedMemory = useSelector(state => state.suiteResults.sharedMemory)

    return (
        <div>
            {results.map((x, i) => <div key={i}>
                <h2 className="font-bold mb-6">{x.exportName}</h2>
                
                <div className="mb-3">
                    
                    <p>Node process RSS</p>
                    <Chart name={x.exportName} 
                        labels={x.snapshots.map(y => Math.round(y.elapsed))} 
                        data={x.snapshots.map(y => Math.round(toMb(y.usage.rss)))} 
                    />
                </div>

                <div className="mb-3">
                    <p>OS free memory occupation</p>
                    <Chart name={x.exportName} 
                        labels={x.snapshots.map(y => Math.round(y.elapsed))} 
                        data={x.snapshots.map(y => Math.round(toMb(y.osFreeMemory)))} 
                    />
                </div>

                {sharedMemory ? <div className="mb-3">
                    <p>WebAssembly.Memory buffer length</p>
                    <Chart name={x.exportName} 
                        labels={x.snapshots.map(y => Math.round(y.elapsed))} 
                        data={x.snapshots.map(y => Math.round(toMb(y.bufferByteLength)))} 
                    />
                </div> : ''}
                

            </div> )}
        </div>
    )
}

export default SuiteResults