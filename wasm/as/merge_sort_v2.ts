// Prev project version
export function genAndMergeSort2(length: i32): void {
    generateMergeSort2Array(length)
    merge_sort2(mergeSort2Array)
}

let mergeSort2Array: Array<i32>;

function generateMergeSort2Array(length: i32): void {
    const arr = new Array<i32>(length)
    for (let i = 0, k = arr.length; i < k; ++i) {
        arr[i] = i32((Math.random() * 2.0 - 1.0) * i32.MAX_VALUE)
    }
    mergeSort2Array = arr
}

function merge2(a: Array<i32>, b: Array<i32>): Array<i32> {
    let i = 0;
    let j = 0;

    const out = new Array<i32>();

    while (i < a.length || j < b.length) {
        if (i >= a.length) {
            out.push(b[j]);
            j++;
            continue;
        }

        if (j >= b.length) {
            out.push(a[i]);
            i++;
            continue;
        }

        if (a[i] < b[j]) {
            out.push(a[i]);
            i++;
        } else {
            out.push(b[j]);
            j++;
        }
    }

    return out
}

function merge_sort2(arr: Array<i32>): Array<i32> {
    if (arr.length === 1) return arr;
    const i: i32 = arr.length / 2
    return merge2(merge_sort2(arr.slice(0, i)), merge_sort2(arr.slice(i)))
}