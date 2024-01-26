function init(){
    searchId();
}

//더미데이터로 id와 이미지 넣기
const userDataList = [
    {
        id: 1,
        userid: "dmstn4626",
        avatar: "./imgFile/profile2.png"
    }, {
        id: 2,
        userid: "asdf1234",
        avatar: "./imgFile/profile4.png"
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
                <li style="list-style: none;">
                <div class='box-user' style= "display:flex; justify-content:center;">
                  <span class='thumb-img'>
                    <img src='${data.avatar}' alt='' style="width:50px; height: 50px; border-radius:50%;"  />
                  </span>
                  <span class='box-cont' style="display:flex; align-items:center;">
                    <strong class='tit-user'>${data.userid}</strong>
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