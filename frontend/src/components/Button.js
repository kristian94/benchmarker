import React from 'react'

function Button(props) {
    return <button 
            onClick={props.onClick}
            className="cursor-pointer
                font-bold 
                text-white 
                py-2
                px-3
                rounded-2xl 
                bg-purple-600 
                hover:bg-purple-700 
                focus:outline-none 
                focus:ring-2 
                focus:ring-purple-600 
                focus:ring-opacity-50"
            >
                {props.text}
            </button>
}

export default Button