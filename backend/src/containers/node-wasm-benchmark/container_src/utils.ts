import { WorkerMessage, WorkerMessageType } from "./types";
import { Worker } from 'worker_threads';

// sequentialAsync :: Array (() -> Promise) -> Promise          // sequential alternative to Promise.all
export const sequentialAsync = promiseThunks => {
    const results: any[] = [];
    
    return promiseThunks.reduce(
        (acc, cur) => acc.then(cur).then(x => results.push(x)), 
        Promise.resolve()).then(() => results)
}

export const whenMessage = <T>(worker: Worker, messageType: WorkerMessageType) => new Promise<T>(res => {
    worker.once('message', (message: WorkerMessage) => {
        if(message.type != messageType) return;
        res(message.data);
    })
})