"use strict";
var __spreadArray = (this && this.__spreadArray) || function (to, from) {
    for (var i = 0, il = from.length, j = to.length; i < il; i++, j++)
        to[j] = from[i];
    return to;
};
exports.__esModule = true;
exports.convertPath = exports.formatNumber = void 0;
var defaultSeparator = require('path').posix.sep;
var formatNumber = function (n, xs) {
    if (xs === void 0) { xs = []; }
    var n_ = typeof n === 'string' ? n : n.toString();
    if (n_.length >= 4) {
        var cutoff = n_.length - 3;
        return formatNumber(n_.substring(0, cutoff), [n_.substring(cutoff)].concat(xs));
    }
    return __spreadArray([n_], xs).join('.');
};
exports.formatNumber = formatNumber;
var convertPath = function (path, separator) {
    if (separator === void 0) { separator = defaultSeparator; }
    return path.replace(/[/]|[\\]/g, separator);
};
exports.convertPath = convertPath;
