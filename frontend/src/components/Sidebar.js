import React, { useState } from 'react'
import { useHistory } from 'react-router';

function Sidebar(props) {
    const history = useHistory()
    const [section, setSection] = useState(1)
    return (
        <div className="flex-none w-52 px-3 pt-4 dark:bg-gray-900">
            <div className="text-center">
                <h1 className="font-bold mb-3 text-2xl">Benchmarker</h1>
            </div>
            <hr className="mb-3" />
            <div className="grid grid-cols-1 gap-1">
                {/* // TODO: Fix centering of text. Below is crap: */}
                <div
                    className={`border border-gray-900 text-sm font-bold h-10 flex items-center justify-center rounded-lg cursor-pointer hover:border-gray-600 transition ease-out duration-300 transform hover:scale-105 ${section === 1 ? "dark:bg-gray-700 bg-opacity-50" : ""}`}
                    onClick={_ => { setSection(1); history.push({ pathname: "/" }) }}
                >
                    Tool
                </div>
                <div
                    className={`border border-gray-900 text-sm font-bold h-10 flex items-center justify-center rounded-lg cursor-pointer hover:border-gray-600 transition ease-out duration-300 transform hover:scale-105 ${section === 2 ? "dark:bg-gray-700 bg-opacity-50" : ""}`}
                    onClick={_ => { setSection(2); history.push({ pathname: "/scenarios" }) }}
                >
                    Scenarios
                </div>
            </div>
        </div>
    )
}

export default Sidebar