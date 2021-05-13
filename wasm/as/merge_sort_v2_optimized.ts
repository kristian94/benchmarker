// Prev project version
export function genAndMergeSort2(length: i32): void {
    generateMergeSort2Array(length)
    merge_sort2(mergeSort2Array)
}

let mergeSort2Array: StaticArray<i32>;

function generateMergeSort2Array(length: i32): void {
    const arr = new StaticArray<i32>(length)
    for (let i = 0, k = arr.length; i < k; ++i) {
        unchecked(arr[i] = i32((Math.random() * 2.0 - 1.0) * i32.MAX_VALUE))
    }
    mergeSort2Array = arr
}

function merge2(a: StaticArray<i32>, b: StaticArray<i32>): StaticArray<i32> {
    let i = 0;
    let j = 0;
    let k = 0;
    const out = new StaticArray<i32>(a.length + b.length);

    while (i < a.length || j < b.length) {
        if (i >= a.length) {
            unchecked(out[k] = unchecked(b[j]));
            k++;
            j++;
            continue;
        }

        if (j >= b.length) {
            unchecked(out[k] = unchecked(b[i]));
            i++;
            k++;
            continue;
        }

        if (a[i] < b[j]) {
            unchecked(out[k] = unchecked(b[i]));
            i++;
            k++;
        } else {
            unchecked(out[k] = unchecked(b[j]));
            j++;
            k++;
        }
    }

    return out
}

function merge_sort2(arr: StaticArray<i32>): StaticArray<i32> {
    if (arr.length === 1) return arr;
    const i: i32 = arr.length / 2
    return merge2(merge_sort2(StaticArray.slice(arr, 0, i)), merge_sort2(StaticArray.slice(arr, i, arr.length)))
}