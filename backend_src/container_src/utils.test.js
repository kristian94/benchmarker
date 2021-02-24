const test = require('ava');
const { sequentialAsync } = require('./utils');

const wait = duration => new Promise(resolve => setTimeout(resolve, duration))

test('sequentialAsync - runs promises sequentially', 
    async t => {

        let s = '';

        const thunkA = () => wait(50).then(() => s += 'a');
        const thunkB = () => wait(25).then(() => s += 'b');

        await sequentialAsync([thunkA, thunkB]);

        t.is(s, 'ab')
});

test('sequentialAsync - resolves to an array, where each entry contains the value of its respective promise', 
    async t => {
        const thunkA = () => wait(50).then(() => 'a');
        const thunkB = () => wait(25).then(() => 'b');

        s = await sequentialAsync([thunkA, thunkB]).then(xs => xs.join(''));

        t.is(s, 'ab')
        
    })

