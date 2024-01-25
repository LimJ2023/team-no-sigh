  function onchangeSelect() {
    var selectedValue = document.getElementById('category').value;
    var userProfiles = document.querySelectorAll('.user');

    userProfiles.forEach(function(userProfile) {
      var subscriptionStatus = userProfile.querySelector('.subscription').textContent.trim();

      // 선택된 값이 'All'이거나 구독 상태가 일치하는 경우 보이도록 처리
      if (selectedValue === 'All' || subscriptionStatus === selectedValue) {
        userProfile.style.display = 'block';
      } else {
        userProfile.style.display = 'none';
      }
    });
  }
