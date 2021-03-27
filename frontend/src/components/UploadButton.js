import React from 'react'
import { useDispatch } from 'react-redux'
import { sendFile } from '../api/dataApi'

function UploadButton() {
    const dispatch = useDispatch()

    function upload() {
        const FilesList = document.getElementById('wasm-upload-button').files
        const loader = document.getElementById('loader-selecti').value || 'default';

        if (FilesList.length < 1) return // stop (if user selects cancel in file selector)
        const fd = new FormData()
        fd.append("wasmfile", FilesList[0])
        fd.append("loader", loader)

        dispatch(sendFile(fd))
    }
    
    return (
        <div>
            <p className="mb-5">Upload WebAssembly module for benchmarking</p>
            <div class="mb-4">
                <label class="block mb-1" htmlFor="loader-select">WebAssembly Loader</label>
                <select class="text-black" id="loader-selecti">
                    <option value="default">Default</option>
                    <option value="assembly_script">AssemblyScript</option>
                </select>
            </div>
            <div class="pt-4 pt-4">
                <label
                    htmlFor="wasm-upload-button"
                    className="cursor-pointer font-bold text-white p-3 rounded-2xl bg-purple-600 hover:bg-purple-700 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:ring-opacity-50">
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