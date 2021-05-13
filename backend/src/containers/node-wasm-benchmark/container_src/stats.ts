// sort array ascending
const asc = (arr: number[]) => arr.sort((a, b) => a - b);

const quantile = (arr: number[], q: number) => {
    const sorted = asc(arr);
    const pos = (sorted.length - 1) * q;
    const base = Math.floor(pos);
    const rest = pos - base;
    if (sorted[base + 1] !== undefined) {
        return sorted[base] + rest * (sorted[base + 1] - sorted[base]);
    } else {
        return sorted[base];
    }
};

export const sum = (arr: number[]): number => arr.reduce((a, b) => a + b, 0);

export const mean = (arr: number[]): number => sum(arr) / arr.length;

export const q25 = (arr: number[]) => quantile(arr, .25);

export const q50 = (arr: number[]) => quantile(arr, .50);

export const q75 = (arr: number[]) => quantile(arr, .75);

export const median = (arr: number[]) => q50(arr);

export const iqr = (arr: number[]) => q75(arr) - q25(arr);

export const getLowerOutlierBound = (arr: number[]) => q25(arr) - iqr(arr) * 1.5;

export const getUpperOutlierBound = (arr: number[]) => q75(arr) + iqr(arr) * 1.5;

export const mode = (arr: number[]) => Number(
    Object.entries(arr.reduce((o, x) => Object.assign(o, { [x]: (o[x] ?? 0) + 1 }), {}))
    .sort((a: any, b: any) => a[1] - b[1])
    .pop()?.[0]);

export const stdDev = (arr: number[]) => {
    const m = mean(arr)

    return Math.sqrt(mean(arr.map(x => (x - m) ** 2)));
}