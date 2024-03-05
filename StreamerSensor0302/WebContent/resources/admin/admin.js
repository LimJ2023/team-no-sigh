
  // Make sure the client is loaded and sign-in is complete before calling this method.
  function execute() {
    return gapi.client.youtube.channels.list({
      "part": [
        "snippet",
        "statistics"
      ],
      "id": [
        "123"
      ],
      "maxResults": 10
    })
        .then(function(response) {
                // Handle the results here (response.result has the parsed body).
                console.log("Response", response);
              },
              function(err) { console.error("Execute error", err); });
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


  