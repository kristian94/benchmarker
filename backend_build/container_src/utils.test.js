"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
const test = require('ava');
const { sequentialAsync } = require('./utils');
const wait = duration => new Promise(resolve => setTimeout(resolve, duration));
test('sequentialAsync - runs promises sequentially', (t) => __awaiter(void 0, void 0, void 0, function* () {
    let s = '';
    const thunkA = () => wait(50).then(() => s += 'a');
    const thunkB = () => wait(25).then(() => s += 'b');
    yield sequentialAsync([thunkA, thunkB]);
    t.is(s, 'ab');
}));
test('sequentialAsync - resolves to an array, where each entry contains the value of its respective promise', (t) => __awaiter(void 0, void 0, void 0, function* () {
    const thunkA = () => wait(50).then(() => 'a');
    const thunkB = () => wait(25).then(() => 'b');
    s = yield sequentialAsync([thunkA, thunkB]).then(xs => xs.join(''));
    t.is(s, 'ab');
}));
