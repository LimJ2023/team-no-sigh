const list = document.getElementById("first_list")

List.items.forEach(item => {

    const info = document.createElement("div");
    info.setAttribute("class","rank-info")
    const cont = `
    <div class="rank-img">
        <img src="${item.snippet.thumbnails.default.url}" />
    </div>
    <div class="rank-info-foot">
        <div class="rank-name" >${item.snippet.title}</div>
        <div class="rank-views">0</div>
        <div class="rank-trend"></div>
    </div>
    `
    info.innerHTML = cont;
    document.querySelector("#first_list").appendChild(info);
})