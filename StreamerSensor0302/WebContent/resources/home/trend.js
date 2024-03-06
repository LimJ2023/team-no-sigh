const first_list = document.getElementById("first_list")
const second_list = document.getElementById("second_list")
const third_list = document.getElementById("third_list")

const trendBtn = document.getElementById("trendBtn")
const youtubeBtn = document.getElementById("youtubeBtn")



trendBtn.addEventListener('click', () => {
    deleteAll();
    createListOrderByTrends();
})
youtubeBtn.addEventListener('click', () => {
    deleteAll();
    getApi();
})

function createListOrderByTrends() {
    let i = 0;

    List.items.forEach(item => {

        const info = document.createElement("div");
        info.setAttribute("class","rank-info")

        if(i < 3) {
            const cont = `
            <div class="rank-img">
                <img src="${item.snippet.thumbnails.default.url}" />
            </div>
            <div class="rank-info-foot">
                <div class="rank-name" ></div>
                <div class="rank-views">조회수 ${item.statistics.viewCount}</div>
                <div class="rank-likes">좋아요 ${item.statistics.likeCount}</div>
                <div class="rank-trend"><i class='bx bx-up-arrow-circle bx-md'></i></div>
            </div>
            `
            info.innerHTML = cont;
    
            document.querySelector("#first_list").appendChild(info);
            console.log('i = ' + i);
        } else if(i < 6) {
            const cont = `
            <div class="rank-img">
                <img src="${item.snippet.thumbnails.default.url}" />
            </div>
            <div class="rank-info-foot">
                <div class="rank-name" ></div>
                <div class="rank-views">조회수 ${item.statistics.viewCount}</div>
                <div class="rank-likes">좋아요 ${item.statistics.likeCount}</div>
                <div class="rank-trend"><i class='bx bx-right-arrow-circle bx-md'></i></div>
            </div>
            `
            info.innerHTML = cont;
    
            document.querySelector("#second_list").appendChild(info);
            console.log('i = ' + i);
        } else if(i < 9) {
            const cont = `
            <div class="rank-img">
                <img src="${item.snippet.thumbnails.default.url}" />
            </div>
            <div class="rank-info-foot">
                <div class="rank-name" ></div>
                <div class="rank-views">조회수 ${item.statistics.viewCount}</div>
                <div class="rank-likes">좋아요 ${item.statistics.likeCount}</div>
                <div class="rank-trend"><i class='bx bx-right-down-arrow-circle bx-md'></i></div>
            </div>
            `
            info.innerHTML = cont;
    
            document.querySelector("#third_list").appendChild(info);
            console.log('i = ' + i);
        }
        i += 1;
    })

}

function deleteAll() {
    document.querySelectorAll(".rank-info").forEach(item => {
        item.remove();
    });
}



function getApi() {
    const url = 'https://youtube.googleapis.com/youtube/v3/videos?part=snippet&part=statistics&chart=mostPopular&regionCode=kr&maxResults=10&key=AIzaSyAoJiuc-avFKKl9qicmjksHRGbfL5dADEY';

    // Ajax 요청 시작
    const xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const data = JSON.parse(xhr.responseText);
            let cnt = 1;

            data.items.forEach(item => {
                const info = document.createElement("div"); // 새로운 div 요소 생성

                const cont = `
                    <div class="rank-img">
                        <img src="${item.snippet.thumbnails.medium.url}" />
                    </div>
                    <div class="rank-name" >${item.snippet.title}</div>
                    <div class="rank-info-foot">
                        <div class="rank-views">조회수 ${item.statistics.viewCount}</div>
                        <div class="rank-likes">좋아요 ${item.statistics.likeCount}</div>
                    </div>
                `;

                info.innerHTML = cont; // 내용 설정

                if (cnt <= 3) {
                    document.querySelector("#first_list").appendChild(info);
                } else if (cnt <= 6) {
                    document.querySelector("#second_list").appendChild(info);
                } else if (cnt <= 9) {
                    document.querySelector("#third_list").appendChild(info);
                }

                cnt += 1;
            });
        }
    };

    // Ajax 요청 전송
    xhr.send();
}
