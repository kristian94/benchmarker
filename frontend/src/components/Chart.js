import React from 'react'
import { Line } from 'react-chartjs-2'

// Docs: https://www.chartjs.org/docs/latest/getting-started/usage.html
function Chart(props) {
    const {data, labels, name} = props

    const chartData = {
        labels: labels,
        datasets: [{
            label: name,
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
        <div className="bg-gray-50 rounded-lg">
            <Line data={chartData} options={options} />
        </div>
    )
}

export default Chart