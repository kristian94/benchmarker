const fs = require('fs').promises;

// sequentialAsync :: Array (() -> Promise) -> Promise          // sequential alternative to Promise.all
export const sequentialAsync = promiseThunks => {
    const results: any[] = [];
    
    return promiseThunks.reduce(
        (acc, cur) => acc.then(cur).then(x => results.push(x)), 
        Promise.resolve()).then(() => results)
}

export const addProps = <T extends Object>(a: T, b: T) => {
    const x: any = {};
    for(const key in a){
        if(!a.hasOwnProperty(key)) continue;

        const A = a[key];
        const B = b[key];

        if(typeof(A) === 'object' && A != null){
            x[key] = addProps(A, B)
            continue;
        }

        if(typeof(A) === 'number' && typeof(B) === 'number'){
            x[key] = A + B;
            continue;
        }

        x[key] = A;
    }
    return x;
}

export const mapNumericalPropsRecursive = (o: any, f: (number) => any) => {
    const x = new o.constructor();
    for(const key in o){
        if(!o.hasOwnProperty(key)) continue;
        const O = o[key];
        if(typeof O === 'object' && O != null){
            x[key] = mapNumericalPropsRecursive(O, f);
        }

        if(typeof O === 'number'){
            x[key] = f(O);
        }
    }
    return x;
}