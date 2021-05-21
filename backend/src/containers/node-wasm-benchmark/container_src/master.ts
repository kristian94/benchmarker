import { promises as fs } from 'fs';
import { Worker } from 'worker_threads';
import { BenchmarkArgs } from '../types';
import { WorkerResult, EnrichedWorkerResult, WorkerData,  WorkerMessage, WorkerMessageType, Snapshot } from './types'
import { performance } from 'perf_hooks';
import { whenMessage } from './utils';

const [ , , wasmPath, outPath, indexString] = process.argv;
const index = Number(indexString);
const delayAmount = 10;

const normalizeSnapshots = (snapshots: Snapshot[]) => {
    const zero = snapshots[0].rss;

    return snapshots.map(x => Object.assign(x, {usage: {rss: x.rss - zero}}))
}

interface MemoryIntervalModule {
    start: (number) => void,
    stop: () => void,
    getSnapshots: () => Snapshot[],
    addSnapshot: () => void
}

const memoryInterval: MemoryIntervalModule = (() => {

    let id;

    const snapshots: Snapshot[] = [];

    const addSnapshot = (() => {
        let start = -1;
    
        return () => {
            const now = performance.now(); 
            if(start === -1) start = now;
            
            snapshots.push({
                rss: process.memoryUsage().rss,
                elapsed: now - start
            })
        }
    })();

    const start = (duration) => {
        id = setInterval(() => {
            addSnapshot();
        }, duration)
    }

    const stop = () => {
        clearInterval(id);
    }

    const getSnapshots = () => snapshots;

    return {
        start,
        stop,
        getSnapshots,
        addSnapshot
    }
})();


;(async () => {
    const args: BenchmarkArgs = await fs.readFile('args.json', {encoding: 'utf-8'}).then(JSON.parse);
    const instantiationOptions = args.instantiationOptions;
    const exportArgs = args.exportArgs[index];
    const {inputs, exportName, interval } = exportArgs;

    const workerData: WorkerData = {
        wasmPath,
        exportName,
        inputs,
        instantiationOptions
    }

    const worker = new Worker('./worker.js', {
        workerData
    });

    const continueMessage: WorkerMessage = {
        type: WorkerMessageType.Continue,
        data: 0
    }

    setTimeout(() => {
        memoryInterval.start(interval);
        worker.postMessage(continueMessage);
    }, delayAmount);

    const workerResults = await whenMessage<WorkerResult>(worker, WorkerMessageType.Result);

    memoryInterval.stop();

    memoryInterval.addSnapshot();

    worker.postMessage(continueMessage);

    const snapshots = normalizeSnapshots(memoryInterval.getSnapshots());

    const json: EnrichedWorkerResult = {
        ...workerResults,
        snapshots: snapshots,
        inputs,
        exportName,
        maxRss: snapshots.map(x => x.usage.rss).reduce((a, b) => Math.max(a, b))
    };

    await fs.writeFile(outPath, JSON.stringify(json))
    
})();