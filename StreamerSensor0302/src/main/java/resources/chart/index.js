const sideMenu = document.querySelector('aside');
const darkMode = document.querySelector('.dark-mode');



darkMode.addEventListener('click', () => {
    document.body.classList.toggle('dark-mode-variables');
    darkMode.querySelector('span:nth-child(1)').classList.toggle('active');
    darkMode.querySelector('span:nth-child(2)').classList.toggle('active');
})


Orders.forEach(Order => {
    const tr = document.createElement('tr');
    const trContent = `
        <td>${Order.productName} </td>
        <td>${Order.productNumber} </td>
        <td>${Order.paymentStatus} </td>
        <td class="${Order.status === 'Declined' ?
            'danger' : Order.status === 'Pending' ? 'warning'
                : 'primary'}">${Order.productName} </td>
        <td class='primary'>Details</td>
    `;

    tr.innerHTML = trContent;
    document.querySelector('table tbody').appendChild(tr);
})

