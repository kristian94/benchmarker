"use strict";
const defaultSeparator = require('path').posix.sep;
const formatNumber = (n, xs = []) => {
    const n_ = typeof n === 'string' ? n : n.toString();
    if (n_.length >= 4) {
        const cutoff = n_.length - 3;
        return formatNumber(n_.substring(0, cutoff), [n_.substring(cutoff)].concat(xs));
    }
    return [n_, ...xs].join('.');
};
// convertPath :: String, String -> String      (convert paths between POSIX/Windows)
const convertPath = (path, separator = defaultSeparator) => path.replace(/[/]|[\\]/g, separator);
module.exports = {
    formatNumber,
    convertPath
};
