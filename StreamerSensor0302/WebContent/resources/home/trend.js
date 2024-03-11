
const youtubeBtn = document.getElementById("youtubeBtn")
const refreshBtn = document.getElementById("refreshBtn")

youtubeBtn.addEventListener('click', () => {
    deleteAll();
    getApi();
})

document.addEventListener('DOMContentLoaded', function() {
    // 버튼을 클릭했을 때 새로고침하는 함수
    refreshBtn.addEventListener('click', function() {
        window.location.reload();
    });
});
$(document).ready(function () { 
    $(refreshBtn).click(function () { 
        $.ajax({
            type: "get",
            url: window.location.href,
            success: function (response) {
                $('html').html();
            }
        });
        
    });

 })

function deleteAll() {
    document.querySelectorAll(".rank-info").forEach(item => {
        item.remove();
    });
}




function getApi() {
    const url = 'https://youtube.googleapis.com/youtube/v3/videos?part=snippet&part=statistics&chart=mostPopular&regionCode=kr&maxResults=12&key=AIzaSyAoJiuc-avFKKl9qicmjksHRGbfL5dADEY';

    // Ajax 요청 시작
    const xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const data = JSON.parse(xhr.responseText);

            data.items.forEach(item => {
                const info = document.createElement("div"); // 새로운 div 요소 생성
                info.setAttribute("class","rank-info");

                const cont = `
                    <div class="rank-img">
                    <a href="https://www.youtube.com/watch?v=${item.id }">
                        <img src="${item.snippet.thumbnails.medium.url}" />
                    </a>
                    </div>
                    <div class="rank-name" >${item.snippet.title}</div>
                    <div class="rank-info-foot">
                        <div class="rank-views"><p>조회수</p>${item.statistics.viewCount}</div>
                        <div class="rank-likes"><p>좋아요</p>${item.statistics.likeCount}</div>
                    </div>
                `;

                info.innerHTML = cont; // 내용 설정

                document.querySelector("#list").appendChild(info);
            });
        }
    };

    // Ajax 요청 전송
    xhr.send();
}
