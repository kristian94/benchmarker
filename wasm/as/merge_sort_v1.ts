// Rosetta version
export function genAndMergeSort(length: i32): void {
    generateMergeSortArray(length)
    mergeSort(mergeSortArray)
}

let mergeSortArray: Array<i32>;

function generateMergeSortArray(length: i32): void {
    const arr = new Array<i32>(length)
    for (let i = 0, k = arr.length; i < k; ++i) {
        arr[i] = i32((Math.random() * 2.0 - 1.0) * i32.MAX_VALUE)
    }
    mergeSortArray = arr
}


function merge(left: Array<i32>, right: Array<i32>, arr: Array<i32>): void {
    let a = 0;

    while (left.length && right.length) {
        arr[a++] = (right[0] < left[0]) ? right.shift() : left.shift();
    }
    while (left.length) {
        arr[a++] = left.shift();
    }
    while (right.length) {
        arr[a++] = right.shift();
    }
}

function mergeSort(arr: Array<i32>): void {
    var len = arr.length;

    if (len === 1) { return; }

    var mid: i32 = len / 2,
        left = arr.slice(0, mid),
        right = arr.slice(mid);

    mergeSort(left);
    mergeSort(right);
    merge(left, right, arr);
}
