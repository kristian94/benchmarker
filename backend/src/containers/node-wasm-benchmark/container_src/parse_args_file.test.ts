const test = require('ava');
const { parseArgsFileExports } = require('./parse_args_file');

const getArgs = () => ({
    exports: {
        fibonacci: {
            inputs: [40, 45]
        }
    }
})

test('parseArgsFileExports - should produce an array of length 2', t => {
    const args = getArgs();

    const parsed = parseArgsFileExports(args);

    t.is(parsed.length, 2)
})

test('parseArgsFileExports - 1st element of the array should contain exportName=fibonacci and input=40', t => {
    const args = getArgs();

    const parsed = parseArgsFileExports(args);

    t.is(parsed[0].exportName, 'fibonacci')
    t.is(parsed[0].input, 40)
})

export {}