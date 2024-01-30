const chart = document.querySelector("#chart").getContext('2d');

// create a new chart instance
new Chart(chart, {
    type: 'line',
    data: {
        labels: ['Jan','Feb','Mar','Apr','May','Jun','Jul'],

        datasets: [
            {
                label: '유튜브',
                data: [29374, 35537, 49009, 59095, 57828],
                borderColor: 'red',
                borderWidth: 2
            },
            {
                label: '치지직',
                data: [295, 35555, 49555, 5955, 57828],
                borderColor: 'green',
                borderWidth: 2
            }
        ]
    },
    options: {
        responsive: true
    }
})