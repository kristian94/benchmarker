const fs = require('fs').promises;

// sequentialAsync :: Array (() -> Promise) -> Promise          // sequential alternative to Promise.all
const sequentialAsync = promiseThunks => {
    const results = [];
    
    return promiseThunks.reduce(
        (acc, cur) => acc.then(cur).then(x => results.push(x)), 
        Promise.resolve()).then(() => results)
}

module.exports = {
    sequentialAsync
}
