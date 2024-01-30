var ctx = document.getElementById('myChart').getContext('2d');
var earning = document.getElementById('earning').getContext('2d');
var graph = document.getElementById('graph').getContext('2d');

var myChart = new Chart(ctx, {
    type: 'polarArea',
    data: {
        labels: ['AFREECA', 'YOUTUBE', 'CHZZK'],
        datasets: [{
            label: 'Streaming Platform',
            data: [12, 19, 15,],
            backgroundColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
            ],
        }]
    },
    options: {
        responsive: true,
    }
});

var myChart = new Chart(earning, {
    type: 'bar',
    data: {
        labels: ['Just Chat', 'Music', 'Game', 'eSports', 'Real Live', 'Creative'],
        datasets: [{
            label: 'Category',
            data: [12, 9, 15, 8, 12, 6],
            backgroundColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});

var myChart = new Chart(graph, {
    type: 'line',
    data: {
        labels: ['23.06', '23.07', '23.08', '23.09', '23.10', '23.11', '23.12', '24.01', '24.02', '24.03'],
        datasets: [
            {
                label: 'Membership',
                data: [7, 10, 11, 15, 14, 17, 19, 20, 22, 25],
                backgroundColor: [
                    'rgba(255, 0, 0, 0.2)',
                ],
                borderColor: [
                    'rgba(255, 0, 0, 1)',
                ],
                borderWidth: 1
            },
            {
                label: 'User',
                data: [10, 14, 21, 23, 24, 29, 31, 35, 37, 40],
                backgroundColor: [
                    'rgba(255, 127, 0, 0.2)',
                ],
                borderColor: [
                    'rgba(255, 127, 0, 1)',
                ],
                borderWidth: 1
            }
        ]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});