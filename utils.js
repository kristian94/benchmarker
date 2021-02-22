const formatNumber = (n, xs = []) => {
    const n_ = typeof n === 'string' ? n : n.toString()
    if(n_.length >= 4){
        const cutoff = n_.length - 3;
        return formatNumber(n_.substring(0, cutoff), [n_.substring(cutoff)].concat(xs))
    }
    return [n_, ...xs].join('.')
}

module.exports = {
    formatNumber
}