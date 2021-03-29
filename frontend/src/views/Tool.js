import React from 'react'
import SuiteResults from '../components/SuiteResults'
import UploadButton from '../components/UploadButton'
import UploadResult from '../components/UploadResult'

function Tool() {
    return (
        <div className="px-8 py-4">
            <h1 className="font-bold mb-12 text-6xl">Benchmarking Tool</h1>
            <div className="grid grid-cols-2 mb-32">
                <UploadButton />
                <UploadResult />
            </div>
            <SuiteResults />
        </div>
    )
}

export default Tool