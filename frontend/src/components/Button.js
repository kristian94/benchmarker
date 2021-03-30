import React from 'react'

function Button({ px = 3, py = 2, onClick, text, rounded = "rounded-2xl", classes = "" }) {
    return <button
        onClick={onClick}
        className={`cursor-pointer
            font-bold 
            text-white 
            py-${py}
            px-${px}
            ${rounded} 
            bg-purple-600 
            hover:bg-purple-700 
            focus:outline-none 
            focus:ring-2 
            focus:ring-purple-600 
            focus:ring-opacity-50
            ${classes}
        `}
    >
        {text}
    </button>
}

export default Button