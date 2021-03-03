import React from 'react'
import { useDispatch } from 'react-redux'
import { sendFile } from '../api/dataApi'

function UploadButton() {
    const dispatch = useDispatch()

    function upload() {
        const FilesList = document.getElementById('wasm-upload-button').files
        if (FilesList.length < 1) return // stop (if user selects cancel in file selector)
        const fd = new FormData()
        fd.append("wasmfile", FilesList[0])
        dispatch(sendFile(fd))
    }
    
    return (
        <div>
            <input
                id="wasm-upload-button"
                type="file"
                accept=".wasm"
                onChange={e => { upload(); e.target.value = null; }}
            />
        </div>
    )
}

export default UploadButton