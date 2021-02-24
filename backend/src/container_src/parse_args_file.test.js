"use strict";
exports.__esModule = true;
var test = require('ava');
var parseArgsFileExports = require('./parse_args_file').parseArgsFileExports;
var getArgs = function () { return ({
    exports: {
        fibonacci: {
            inputs: [40, 45]
        }
    }
}); };
test('parseArgsFileExports - should produce an array of length 2', function (t) {
    var args = getArgs();
    var parsed = parseArgsFileExports(args);
    t.is(parsed.length, 2);
});
test('parseArgsFileExports - 1st element of the array should contain exportName=fibonacci and input=40', function (t) {
    var args = getArgs();
    var parsed = parseArgsFileExports(args);
    t.is(parsed[0].exportName, 'fibonacci');
    t.is(parsed[0].input, 40);
});
