const fs = require('fs').promises;
const defaultSeparator = require('path').posix.sep;

export const formatNumber = (n: Number|String, xs: any[] = []) => {
    const n_ = typeof n === 'string' ? n : n.toString()
    if(n_.length >= 4){
        const cutoff = n_.length - 3;
        return formatNumber(n_.substring(0, cutoff), [n_.substring(cutoff)].concat(xs))
    }
    return [n_, ...xs].join('.')
}

export const convertPath = (path: String, separator = defaultSeparator) => 
    path.replace(/[/]|[\\]/g, separator);


export const fileExists: (path: String) => Promise<Boolean> = (path: String) => fs.access(path)
    .then(_ => true)
    .catch(_ => false);
