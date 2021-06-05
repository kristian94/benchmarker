import React, { ChangeEventHandler } from 'react'

export interface FilePickerProps {
    changeHandler: ChangeEventHandler
    extension: string
}

const getRandomString = () => Math.random().toFixed(20).toString().substring(2);

export default function UploadButton(props: FilePickerProps) {

    const id = getRandomString();

    return (
        <div className="pt-3">
            <label
                htmlFor={id}
                className="cursor-pointer font-bold text-white py-2 px-3 rounded bg-purple-600 hover:bg-purple-700 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:ring-opacity-50">
                Choose file ({props.extension})
            </label>
            <input
                id={id}
                style={{ display: "none" }}
                type="file"
                accept={props.extension}
                onChange={props.changeHandler}
                multiple={false}
            />
        </div>
    )
}