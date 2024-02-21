const list = document.getElementById("first_list")
const delBtn = document.getElementById("delBtn")

delBtn.addEventListener('click', () => {
    console.log("삭제버튼 진입");
    deleteAll();
})

List.items.forEach(item => {

    const info = document.createElement("div");
    info.setAttribute("class","rank-info")
    const cont = `
    <div class="rank-img">
        <img src="${item.snippet.thumbnails.default.url}" />
    </div>
    <div class="rank-info-foot">
        <div class="rank-name" ></div>
        <div class="rank-views">조회수 ${item.statistics.viewCount}</div>
        <div class="rank-likes">좋아요 ${item.statistics.likeCount}</div>
        <div class="rank-trend"></div>
    </div>
    `
    info.innerHTML = cont;
    document.querySelector("#first_list").appendChild(info);
})


function deleteAll() {
    document.querySelectorAll(".rank-ver-list").forEach(item => {
        item.remove();
    });
}