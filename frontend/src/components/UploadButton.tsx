import React, { ChangeEventHandler } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { sendFile } from '../api/dataApi'
import LoaderDropdown from './LoaderDropdown'
import FilePicker from './FilePicker';
import { LoaderConfig, LoaderConfigState } from '../interfaces/loader-config'
import { addFile } from '../reducers/fileSelectionSlice'
import { FileSelectionState } from '../interfaces/file-select';
import Button from './Button';


function UploadButton() {
    const loaderConfigsState: LoaderConfigState = useSelector((state: any) => state.loaderConfig);
    const fileSelectState: FileSelectionState = useSelector((state: any) => state.fileSelect);
 
    const dispatch = useDispatch();

    const selected: LoaderConfig = loaderConfigsState.loaderConfigs.find(x => x.id === loaderConfigsState.selected) as LoaderConfig;

    function upload() {
        const loader = selected.id;    

        const fd = new FormData()

        fileSelectState.filesSelected.forEach((file, index) => {
            const extension = selected.files[index].extension;
            fd.append(extension, file);
        });

        fd.append("loader", loader)
        fd.append("entryFileIndex", (selected.entryFileIndex ?? 0).toString())
       
        dispatch(sendFile(fd))
    }

    const changeHandler = i => x => {
        
        dispatch(addFile({
            index: i,
            file: x.target.files[0]
        }))
    };

    const disableUpload = selected.files.length > fileSelectState.filesSelected.length;

    return (
        <div className="grid grid-cols-1 gap-8">
            <p className="text-xl">1. Upload module</p>
            <LoaderDropdown/>
            <div className="grid grid-cols-1 gap-2">
                {selected.files.map((x, i) => {
                    const file = fileSelectState.filesSelected[i];
                    
                    const selectedFileEl = file 
                        ? <p className="mt-2">{file.name}</p>
                        : <p className="mt-2 italic">{x.name}</p>

                    return <div>
                        
                        <FilePicker {...{
                            changeHandler: changeHandler(i), 
                            extension: x.extension,
                            key: i
                        }}/>
                        {selectedFileEl}
                    </div>
                })}
            </div>
            <Button text="Submit" onClick={upload} disabled={disableUpload}/>
        </div>
    )
}

export default UploadButton