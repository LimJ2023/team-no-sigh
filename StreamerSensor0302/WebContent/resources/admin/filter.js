function filterUsers() {
        var category = document.getElementById("category").value;
        fetch('/api/users/subscription/' + category)
            .then(response => response.json())
            .then(users => {
                var userProfile = document.getElementById("userProfile");
                userProfile.innerHTML = '';
                users.forEach(user => {
                    userProfile.innerHTML += `
                        <a href='${root}member_profile?user_idx=${user.user_idx}&user_id=${user.user_id}'>
                            <div class='user'>
                                <p class='id'>
                                    <img src='img/admin/profile4.png' />&nbsp; 아이디: ${user.user_id}
                                </p>
                                <br /><br />
                                <p class='subscription'>구독 여부: ${user.subscription}</p>
                            </div>
                        </a>
                    `;
                });
            })
            .catch(error => console.error('Error:', error));
    }