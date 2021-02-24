import React, { useEffect } from 'react'
import { useSelector, useDispatch } from 'react-redux'
import { getPosts } from '../api/dataApi'


function Posts() {
    const dispatch = useDispatch()
    const posts = useSelector(state => state.data.posts)

    // Only executed once when mounting
    useEffect(() => {
        console.log("gettings posts");
        dispatch(getPosts())
    }, [dispatch])

    return (
        <>
            <h1>Posts</h1>
            <button onClick={() => dispatch(getPosts())}>
                More posts
            </button>
            {
                posts.map((p, i) => {
                    return <p key={i}>{p.title}</p>
                })
            }
        </>
    )
}

export default Posts