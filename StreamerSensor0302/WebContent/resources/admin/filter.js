function onchangeSelect() {
	var selectedValue = document.getElementById('category').value;
	var userProfiles = document.querySelectorAll('.user');

	userProfiles.forEach(function(userProfile) {
		var subscriptionStatusElement = userProfile.querySelector('.subscription');
		var subscriptionStatus = subscriptionStatusElement ? subscriptionStatusElement.textContent.trim() : '';

		// 선택된 값이 'All'이면 모든 프로필 보이도록 처리
		if (selectedValue === 'All') {
			userProfile.style.display = 'block';
		} else {
			// 선택된 값이 구독 상태와 일치하는 경우 보이도록 처리
			userProfile.style.display = subscriptionStatus.includes(selectedValue) ? 'block' : 'none';
		}
	});
}

function searchFunction() {
	var input, user, i, id;

	input = document.getElementById("searchInput").value.toUpperCase();
	user = document.getElementsByClassName("user");

	for (i = 0; i < user.length; i++) {
		id = user[i].getElementsByClassName("id");

		if (id[0].innerHTML.toUpperCase().indexOf(input) > -1) {
			user[i].style.display = "";
		} else {
			user[i].style.display = "none";
		}
	}
}
