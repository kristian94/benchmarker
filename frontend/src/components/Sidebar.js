import React, { useState } from 'react'
import { useHistory } from 'react-router';

function Sidebar(props) {
    const history = useHistory()
    const [section, setSection] = useState(1)
    return (
        <div className="flex-none w-52 px-3 pt-4 dark:bg-gray-900">
            <div className="text-center">
                <h1 className="font-bold mb-6 text-2xl">Benchmarker</h1>
            </div>
            <div className="grid justify-items-stretch grid-cols-1 gap-1">
                {/* // TODO: Fix centering of text. Below is crap: */}
                <div
                    className={`border border-gray-900 text-sm font-bold h-10 text-center rounded-lg cursor-pointer hover:border-gray-600 transition ease-out duration-300 transform hover:scale-110 ${section === 1 ? "dark:bg-gray-700 bg-opacity-50" : ""}`}
                    onClick={_ => { setSection(1); history.push({ pathname: "/" }) }}
                >
                    <div className="align-middle">Tool</div>
                </div>
                <div
                    className={`border border-gray-900 text-sm font-bold h-10 text-center rounded-lg cursor-pointer hover:border-gray-600 transition ease-out duration-300 transform hover:scale-110 ${section === 2 ? "dark:bg-gray-700 bg-opacity-50" : ""}`}
                    onClick={_ => { setSection(2); history.push({ pathname: "/scenarios" }) }}
                >
                    <div className="align-middle">Scenarios</div>
                </div>
            </div>
        </div>
    )
}

export default Sidebar