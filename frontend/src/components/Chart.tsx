import React from 'react'
import { Line } from 'react-chartjs-2'

export interface Dataset {
    label: string,
    data: any
}

export interface ChartProps {
    datasets: Dataset[],
    labels: string[]
}

// Docs: https://www.chartjs.org/docs/latest/getting-started/usage.html
function Chart(props: ChartProps) {
    // const {data, labels, name} = props
    const {datasets, labels} = props

    // yellow, purple, turquoise
    // const colors = [
    //     'rgba(255, 255, 0, 0.5)',
    //     'rgba(255, 0, 255, 0.5)',
    //     'rgba(0, 255, 255, 0.5)',
    // ]

    // primaries:
    const colors = [
        'rgba(255, 0, 0, 0.5)',
        'rgba(0, 255, 0, 0.5)',
        'rgba(0, 0, 255, 0.5)',
    ]

    const chartData = {
        labels: labels,
        datasets: datasets.map((x, i) => Object.assign(x, {
            cubicInterpolationMode: 'monotone',
            borderColor: colors[i],
            fill: 'none'
        }))
    }

    const options = {
        hover: {
            mode: "nearest",
            intersect: true,
            animationDuration:0
        }
    }

    return (
        <div className="bg-white rounded-lg max-w-3xl">
            <Line data={chartData} options={options} />
        </div>
    )
}

export default Chart