 $(document).ready(function(){
        console.log("u");
        var user_idx = '${loginUserBean.user_idx}';  // JSP에서 JavaScript로 값 전달
        $('.td-heart img').on('click', function(){
            var image = $(this);  // 'this'를 현재 클릭된 이미지로 고정합니다.
            
            $.ajax({
                type: "POST",
                url: "/StreamerSensor0302/updateLikes",
                data: {user_idx: user_idx},
                success: function(response){
                    image.attr("src", "img/leaderBoard/green_heart.png");
                },
                error: function(xhr, status, error){
                    console.error("AJAX Error:" + status + error);
                }
            });
        });
    });