function init(){
    searchId();
}

//더미데이터로 id와 이미지 넣기
const userDataList = [
    {
        id: 1,
        userid: "dmstn4626",
        img: 'StreamerSensor_0123/Admin_page/Members_page/imgFile/KITA2.JPG'
    }, {
        id: 2,
        userid: "asdf1234",
        img: "StreamerSensor_0123/Admin_page/Members_page/imgFile/profile1.png"
    }
];

//유저 아이디 검색 기능
function searchId(){
    const searchInput = document.getElementById('searchInput');
    const searchedUserList = document.getElementById('searchedUserList');
    let searchedDataList = [];

    function searchIdFromData(e){
        const searchValue = e.target.value;

        if (searchValue !== ''){
            searchedDataList = userDataList.filter((user) =>
            user.userid.includes(searchValue)            
            );

            searchedUserList.style.display = 'block';
            searchedUserList.innerHTML = searchedDataList
            .map((data) => {
                return `
                <li>
                <div class='box-user'>
                  <span class='thumb-img'>
                    <img src='./img/img-thumbnail.jpeg' alt='' />
                  </span>
                  <span class='box-cont'>
                    <strong class='tit-user'>${data.userid}</strong>
                    <span class='cont-info'>${data.username}</span>
                  </span>
                </div>
                </li>`;
            })
            .join('');
        } else {
            //검색어가 없을 시 리스트 초기화 및 숨김 처리
            searchedUserList.style.display = 'none';
            searchedDataList = [];
        }
    }

    searchInput.addEventListener('input', searchIdFromData);
}

init();