import React from 'react'
import { Line } from 'react-chartjs-2'

// Docs: https://www.chartjs.org/docs/latest/getting-started/usage.html
function Chart(props) {
    const {data, labels, name} = props

    const chartData = {
        labels: labels,
        datasets: [{
            label: name + ': Memory usage',
            data: data
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
            <Line data={chartData} options={options} />
        </div>
    )
}

export default Chart