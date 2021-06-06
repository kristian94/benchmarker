import React, { ChangeEventHandler } from 'react'
import { useSelector, useDispatch } from 'react-redux'
import { LoaderConfigState } from '../interfaces/loader-config'
import { setSelected } from '../reducers/loaderConfigSlice'
import { reset } from '../reducers/fileSelectionSlice'

export default function LoaderDropdown(){
    const loaderConfigsState: LoaderConfigState = useSelector((state: any) => state.loaderConfig);
    const dispatch = useDispatch();

    const { loaderConfigs, selected } = loaderConfigsState;

    if(!loaderConfigs || loaderConfigs.length === 0) return (<p>No loader configs...</p>)

    const OnChangeHandler: ChangeEventHandler<HTMLSelectElement> = event => {
        dispatch(reset(0))
        dispatch(setSelected(event.currentTarget.value));
    }

    return (
        <div className="">
            <label className="block mb-1" htmlFor="loader-selection">WebAssembly Loader</label>
            <select onChange={OnChangeHandler} defaultValue={selected} className="text-black rounded py-1 px-2 text-sm max-w-xs w-full" id="loader-selection">
                {loaderConfigs.map(x => 
                    <option key={x.id} value={x.id}>{x.name}</option>
                )}
            </select>
            
        </div>
    )
}