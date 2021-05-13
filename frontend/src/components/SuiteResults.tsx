import React from 'react'
import { useSelector } from 'react-redux'
import HR from './HR';
import Chart from './Chart';
import {Dataset} from './Chart'

const toMb = (x: number) => x / 1024 / 1024;

interface ResultProps {
    RSSSet: Dataset,
    freeMemorySet: Dataset,
    bufferLengthSet: Dataset,
    labels: string[],
    exportName: string,
    inputs: any[],
    executionDuration: number,
    peakRSS: number
    stdDev: number
    outliers: number
}

function SuiteResults() {

    const zeroPad = (x, length) => x.toString().length < length ? zeroPad('0' + x, length): x;

    const results = useSelector((state: any) => state.suiteResults.results)
    const sharedMemory = useSelector((state: any) => state.suiteResults.sharedMemory)

    if (!results || results.length === 0) {
        return (<></>)
    }

    const max = xs => xs.reduce((a, b) => Math.max(a, b), 0);

    const chartProps: ResultProps[] = results.map(x => ({
        labels: x.snapshots.map(y => `${Math.round(y.elapsed)} ms`), 
        RSSSet: {
            label: 'Node process RSS (MB)',
            data: x.snapshots.map(y => toMb(y.usage.rss))
        },
        freeMemorySet: {
            label: 'OS Free Memory Occupation (MB)',
            data: x.snapshots.map(y => toMb(y.osFreeMemory))
        },
        bufferLengthSet: {
            label: 'Wasm Buffer Length (MB)',
            data: x.snapshots.map(y => toMb(y.bufferByteLength))
        },
        exportName: x.exportName,
        inputs: x.inputs,
        executionDuration: x.executionDuration,
        peakRSS: max(x.snapshots.map(x => toMb(x.usage.rss))),
        stdDev: toMb(x.stdDev),
        outliers: x.outliers,
    })) 

    return (
        
        <div className="">
            <h2 className="bold text-2xl mb-6">Benchmark Results</h2>

            { chartProps.map((x: ResultProps, i: number) => 
            <div key={i} className="pb-2 mb-6">
                <h2 className="text-lg mb-6">{zeroPad(i+1, 2)}: <span className="font-bold">{x.exportName} ({x.inputs.map(y => y.toString()).join(', ')})</span> </h2>
                <div className="grid mb-3 justify-start gap-x-3">
                    { 
                        [
                            ['Duration', `${x.executionDuration.toFixed(2)} ms`],
                            ['Peak RSS', `${x.peakRSS.toFixed(2)} MB`],
                            ['Standard Deviation (RSS)', `${x.stdDev.toFixed(2)} MB`],
                            ['Outliers (of 25 iterations)', `${x.outliers}`],
                        ].map(x => 
                            <>
                                <p className="col-start-1 text-gray-300">{x[0]}</p> <span className="font-bold col-start-2">{x[1]}</span>
                            </>
                            )
                    }
                    {/* <p className="col-start-1 text-gray-300">duration</p> <span className="font-bold col-start-2">{x.executionDuration.toFixed(2)}ms</span> */}
                </div>
                <Chart 
                    labels={x.labels} 
                    datasets={[x.RSSSet]}></Chart>
                <HR></HR>
            </div> 
            
            )}
            
            {/* {results.map((x, i) => <div key={i}>
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
                

            </div> )} */}
        </div>
    )
}

export default SuiteResults