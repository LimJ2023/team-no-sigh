const first_list = document.getElementById("first_list")
const second_list = document.getElementById("second_list")
const third_list = document.getElementById("third_list")

const delBtn = document.getElementById("delBtn")
const trendBtn = document.getElementById("trendBtn")

delBtn.addEventListener('click', () => {
    deleteAll();
})

trendBtn.addEventListener('click', () => {
    deleteAll();
    createListOrderByTrends();
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
    const info = document.createElement("div");

    fetch('https://youtube.googleapis.com/youtube/v3/videos?part=snippet&part=statistics&chart=mostPopular&regionCode=kr&maxResult=10&key=AIzaSyAoJiuc-avFKKl9qicmjksHRGbfL5dADEY')
    .then(res => res.json())
    .then(data => {
        data.items.forEach(item => {
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

        })
    })
}
