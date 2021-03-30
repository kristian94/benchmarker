import { addPosts, addUser } from '../reducers/dataSlice'
import { setSuiteResults, setRunning } from '../reducers/suiteResultSlice'
import { setWasmMeta } from '../reducers/wasmMetaSlice'
import { fetchData, fetchFile } from './apiHelpers'

// api routes
export const getUser = id => {
    return async dispatch => {
        try {
            const res = await fetchData('https://jsonplaceholder.typicode.com/todos/1', 'GET')
            dispatch(addUser(res))
        } catch (e) {
            console.log(e);
        }
    }
}

export const getPosts = () => {
    return async dispatch => {
        try {
            const res = await fetchData('https://jsonplaceholder.typicode.com/posts', 'GET')
            dispatch(addPosts(res))
        } catch (e) {
            console.log(e);
        }
    }
}

export const sendFile = data => {
    return async dispatch => {
        try {
            const res = await fetchFile('http://localhost:8000/wasm-upload', "POST", data)
            dispatch(setWasmMeta(res))
        } catch (e) {
            console.log(`Noget med galt: ${e}`);
        }
    }
}

export const runSuite = body => dispatch => {
    dispatch(setRunning(true))
    fetchData(
        'http://localhost:8000/run-suite', 
        "POST", 
        body)
        .then(res => dispatch(setSuiteResults(res)))
        .catch(err => {
            console.error(err)
            dispatch(setRunning(false))
        })
}
    

