# benchy - benchmarking JS/Wasm code with Docker

quick docker intro:
https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

getting files out of Docker:
https://stackoverflow.com/questions/57339971/docker-copy-file-out-of-container-while-building-it

Docker create API ref (and more):
https://docs.docker.com/engine/reference/commandline/create/

Child processes API ref (Node)
https://nodejs.org/api/child_process.html#child_process_spawning_bat_and_cmd_files_on_windows

## todo
- Docker should be run and built from Node

- Find a way to get metrics out of Docker
https://stackoverflow.com/questions/57339971/docker-copy-file-out-of-container-while-building-it

# Make sure container memory is not "tainted" by outside processes
log memory usage from inside docker on an interval, see if it changes on outside memory allocation

result: In-container memory (printed using "freemem()" from within Node.js runtime) does not 
seem to be affected by outside processes, but does however fluctuate a bit during idle periods.
Fluctuations seem be in the order of 1KB, so it should not be significant for functions that 
consumes memory in the order of 100KB or more. 



## Down the line...

- how do we decide on snapshot intervals? (provide as arg probably)
- handle dependencies (bundling could be a solution, WebAssembly possible answer as well)?
- scaling? How do we test entire applications in this manner?
- how do we benchmark webassembly code?
- GUI?
- auto infer input? (tricky, probably not feasible)
