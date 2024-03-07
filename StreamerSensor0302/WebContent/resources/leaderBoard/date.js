function loadRankingData() {
    var selectedDate = document.getElementById('streamingDate').value;
    if (!selectedDate) {
        return;
    }
    window.location.href = "/StreamerSensor0302/leaderBoard?streaming_date=" + selectedDate;
}