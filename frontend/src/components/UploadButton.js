import React from 'react'
import { useDispatch } from 'react-redux'
import { sendFile } from '../api/dataApi'

function UploadButton() {
    const dispatch = useDispatch()

    function upload() {
        const FilesList = document.getElementById('wasm-upload-button').files
        const loader = document.getElementById('loader-selection').value || 'default';
        const importMemory = document.getElementById('import-memory-selection').value === 'true' || false;


        if (FilesList.length < 1) return // stop (if user selects cancel in file selector)
        const fd = new FormData()
        fd.append("wasmfile", FilesList[0])
        fd.append("loader", loader)
        fd.append("importMemory", importMemory)

        dispatch(sendFile(fd))
    }
    
    return (
        <div>
            <p className="mb-5">Upload WebAssembly module for benchmarking</p>
            <div className="mb-4">
                <label className="block mb-1" htmlFor="loader-selection">WebAssembly Loader</label>
                <select defaultValue="default" className="text-black rounded py-1 px-2 text-sm" id="loader-selection">
                    <option value="default">Default</option>
                    <option value="assembly_script">AssemblyScript</option>
                </select>
            </div>
            <div className="mb-4">
                <label className="block mb-1" htmlFor="import-memory-selection">Import memory</label>
                <select defaultValue="false" className="text-black rounded py-1 px-2 text-sm" id="import-memory-selection">
                    <option value="false">false</option>
                    <option value="true">true</option>
                </select>
            </div>
            <div className="pt-4 pt-4">
                <label
                    htmlFor="wasm-upload-button"
                    className="cursor-pointer font-bold text-white py-2 px-3 rounded-2xl bg-purple-600 hover:bg-purple-700 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:ring-opacity-50">
                    Upload
                </label>
                <input
                    style={{display:"none"}}
                    id="wasm-upload-button"
                    type="file"
                    accept=".wasm"
                    onChange={e => { upload(); e.target.value = null; }}
                />
            </div>
            
        </div>
    )
}

export default UploadButton