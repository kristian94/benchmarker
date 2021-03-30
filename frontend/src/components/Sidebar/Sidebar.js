import React, { useState } from 'react';
import SidebarFooter from './SidebarFooter';
import SidebarItem from './SidebarItem';

function Sidebar() {
    const [section, setSection] = useState(1)

    return (
        <div className="flex-none w-52 px-3 pt-4 text-white bg-gray-900 dark:bg-gray-900 fixed h-full">
            <div className="grid grid-cols-1 gap-1 h-full content-between">
                <div>
                    <div className="text-center">
                        <h1 className="font-bold mb-3 text-2xl">Benchmarker</h1>
                    </div>
                    <hr className="mb-3" />
                    <div className="grid grid-cols-1 gap-1">
                        <SidebarItem
                            text="Tool"
                            section={1}
                            activeSection={section}
                            path="/"
                            setSection={setSection}

                        />
                        <SidebarItem
                            text="Scenarios"
                            section={2}
                            activeSection={section}
                            path="/scenarios"
                            setSection={setSection}
                        />
                    </div>
                </div>
                <div>
                    <SidebarFooter />
                </div>
            </div>
        </div>
    )
}

export default Sidebar