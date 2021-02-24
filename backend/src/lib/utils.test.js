"use strict";
var test = require('ava');
var _a = require('./utils'), formatNumber = _a.formatNumber, convertPath = _a.convertPath;
test('convertPath - windows to posix', function (t) {
    var winPath = 'C:\\Users\\Bob\\readme.md';
    var posixPath = 'C:/Users/Bob/readme.md';
    t.is(convertPath(winPath, '/'), posixPath);
});
