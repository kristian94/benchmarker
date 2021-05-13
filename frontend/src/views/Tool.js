import React from 'react'
import Suite from '../components/Suite'
import SuiteResults from '../components/SuiteResults'
import UploadButton from '../components/UploadButton'
import UploadResult from '../components/UploadResult'

function Tool() {
    return (
        <div className="px-8 py-4">
            <h1 className="font-bold mb-6 text-6xl">WebAssembly Benchmarking Tool</h1>
            <div className="grid grid-cols-3 mb-16">
                <UploadButton />
                <UploadResult />
                <Suite />
            </div>
            <SuiteResults />
        </div>
    )
}

export default Tool