# benchy - benchmarking JS/Wasm code with Docker

Benchy - a tool for dynamically creating and executing benchmark suites in containerized environments, tailored to specific performance needs.

- Utilizes Docker to provide isolated, automated and configurable runtime environments for benchmarking
- Produces key metrics to provide useful insight into the benchmarked code
- Fine-tuning of the benchmark runtime's available resources (ram, cpu) can be used to simulate different environments

## setup

Have the following installed:
- Docker (v20.10.2, or higher)
- Node (v12.18.2, or higher)   

## ongoing concerns

- parallelization (in general, timely execution of benchmark suites)
- code structure (keep it clean, keep it simple)
- usability (automate everything, transparency in errors)

## todo
- frontend!!
- interface: set up simple server, allowing for file uploads
- parse results file
- metrics: include execution time
- inputs, add support for: 
  - number of repetitions
  - memory, cpu (see 'docker create': https://docs.docker.com/engine/reference/commandline/create/)
- find better way to measure memory use (freemem() fluctuates a bit)

## research todo
- find metrics of interest
- find support for the use of Docker (probably ties together with using docker to simulate specific environments, possibly with restricted resources)
- check if tools like this exist, and if so, how we can improve on existing solutions
- anything that justifies coding this heap of garbage really

## Down the line...

- CPU and Memory limits (see options for 'docker create')
- how do we decide on snapshot intervals? (provide as arg probably)
- handle dependencies (bundling could be a solution, WebAssembly possible answer as well)?
- scaling? How do we test entire applications in this manner?
- GUI?
- auto infer input? (tricky, probably not feasible)

- SOLVED how do we benchmark webassembly code?


# Archive/log

## 2021-02-23

#### work done
- DONE streamline container input
- DONE multiple exports support
- DONE support for mutliple inputs
- DONE replace random name generation with UUID or similar (used for images and containers)
- metrics: include execution time (measured, not output yet!)


## 2021-02-22

#### some resources

quick docker intro:
https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

getting files out of Docker:
https://stackoverflow.com/questions/57339971/docker-copy-file-out-of-container-while-building-it

Docker create API ref (and more):
https://docs.docker.com/engine/reference/commandline/create/

Child processes API ref (Node)
https://nodejs.org/api/child_process.html#child_process_spawning_bat_and_cmd_files_on_windows


#### work done 
- DONE: Docker should be run and built from Node

- DONE: Find a way to get metrics out of Docker
https://stackoverflow.com/questions/57339971/docker-copy-file-out-of-container-while-building-it

#### Make sure container memory is not "tainted" by outside processes
log memory usage from inside docker on an interval, see if it changes on outside memory allocation

result: In-container memory (printed using "freemem()" from within Node.js runtime) does not 
seem to be affected by outside processes, but does however fluctuate a bit during idle periods.
Fluctuations seem be in the order of 1KB, so it should not be significant for functions that 
consumes memory in the order of 100KB or more. 