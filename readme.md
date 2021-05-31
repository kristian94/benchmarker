# Wasm Benchmarking Tool - benchmarking Wasm modules with Node.js & Docker

A tool for dynamically creating and executing benchmark suites in containerized environments, tailored to specific performance needs.

- Utilizes Docker to provide reproducible runtime environments for benchmarking
- Produces key metrics to provide useful performance insight

## setup

requires:
- Docker (v20.10.2, or higher)
- Node (v12.18.2, or higher)
- npm (v6.14.11)

#### backend setup 

$ cd backend
$ npm i
$ npm run api

#### frontend setup 

$ cd frontend
$ npm i
$ npm run start