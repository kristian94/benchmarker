import React from 'react';
import PropTypes from 'prop-types';
import { useHistory } from 'react-router';

function SidebarItem({ activeSection, section, text, setSection, path }) {
    const history = useHistory()
    return (
        <div
            className={`border border-gray-900 text-sm font-bold h-10 flex items-center justify-center rounded-lg cursor-pointer hover:border-gray-600 transition ease-out duration-300 transform hover:scale-105 ${activeSection === section ? "bg-gray-700 bg-opacity-50" : ""}`}
            onClick={_ => { setSection(section); history.push({ pathname: path }) }}
        >
            {text}
        </div>
    )
}

SidebarItem.propTypes = {
    activeSection: PropTypes.number,
    section: PropTypes.number,
    text: PropTypes.string,
    setSection: PropTypes.func,
    path: PropTypes.string
}

export default SidebarItem