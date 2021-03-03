export async function fetchData(url, method, data) {
    const req = fetch(url, {
        method: method,
        headers: {
            'Content-Type': 'application-json'
        },
        body: JSON.stringify(data),
    })

    const res = await req

    if (res.ok) {
        return res.json()
    } else {
        throw new Error(`Error fetching data: ${res.status}`)
    }
}

export async function fetchFile(url, method, data) {
    const req = fetch(url, {
        method: method,
        headers: {
            // 'Content-Type': 'multipart/form-data'
        },
        body: data
    })

    const res = await req

    if (res.ok) {
        return res.text()
    } else {
        throw new Error(`Error fetching data: ${res.status}`)
    }
}