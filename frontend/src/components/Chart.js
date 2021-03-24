import React from 'react'
import { Line } from 'react-chartjs-2'

// Docs: https://www.chartjs.org/docs/latest/getting-started/usage.html
function Chart() {
    const data = {
        labels: ["boisen", "er", "rippe", "med", "specialet", "gg"],
        datasets: [{
            label: "Bra chart",
            data: [12, 19, 3, 5, 2, 3]
        }]
    }

    const options = {
        hover: {
            mode: "nearest",
            intersect: true,
            animationDuration:0
        }
    }

    return (
        <div className="dark:bg-gray-300 rounded-lg shadow-lg">
            <Line data={data} options={options} />
        </div>
    )
}

export default Chart