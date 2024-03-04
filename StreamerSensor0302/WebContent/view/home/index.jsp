<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="home/style.css"/>
    <!-- link swiper css -->
    <link rel="stylesheet" href="swiper-bundle.min.css">
    <!-- Fav icon -->
    <link rel="shortcut icon" href="img/fav-icon.png" type="image/x-icon">
    <!-- box icons -->
    <link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="home/carousel.css">
    <title>Streamer Sensor1</title>
</head>
<body>
<!-- header -->
<header>
    <!-- nav container(위쪽 로고부터 검색창, 회원이미지까지) home_include 안의 logo_include로 뺴냄 -->
    <c:import url="/view/home_include/logo_include.jsp"/>
    <!-- navbar (왼쪽 사이드바) home_include 안의 left_include로 빼냄 -->
    <c:import url="/view/home_include/left_sideBar.jsp"/>
</header>


<!-- 캐러셀 -->
<div class="sugg-content">
    <div class="carousel-test">
        <input type="radio" name="position" id="radio1"/>
        <input type="radio" name="position" id="radio2"/>
        <input type="radio" name="position" checked id="radio3"/>
        <input type="radio" name="position" id="radio4"/>
        <input type="radio" name="position" id="radio5"/>


        <div class="carousel">
            <div class="item" data-radio-target="radio1">
                <div class="streamer_box">
                    <img src="./img/Person_Icon.png" class="carImg"/>
                    <div class="box_text">
                        <h2 class="streamer_title">김인직</h2>
                        <div class="streamer_type">게임</div>
                        <div class="watch-btn play-btn">
                            <i class='bx bx-right-arrow bx-md'></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item" data-radio-target="radio2">
                <div class="streamer_box">
                    <img src="${root }img/microphone.png" class="carImg profileMic"/>
                    <div class="box_text">
                        <h2 class="streamer_title">김지섭</h2>
                        <div class="streamer_type">음악</div>
                        <div class="watch-btn play-btn">
                            <i class='bx bx-right-arrow bx-md'></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item" data-radio-target="radio3">
                <div class="streamer_box">
                    <img src="${root }img/admin/profile1.png" class="carImg profileBocchi"/>
                    <div class="box_text">
                        <h2 class="streamer_title">봇치</h2>
                        <div class="streamer_type">음악</div>
                        <a href="review?streamer_idx=5">
                            <div class="watch-btn play-btn">
                                <i class='bx bx-right-arrow bx-md'></i>
                            </div>
                        </a>

                    </div>
                </div>
            </div>
            <div class="item" data-radio-target="radio4">
                <div class="streamer_box">
                    <img src="${root }img/bank.png" class="carImg profileBank"/>
                    <div class="box_text">
                        <h2 class="streamer_title">주식왕뱅킹</h2>
                        <div class="streamer_type">주식</div>
                        <a href="review?streamer_idx=1">
                        	<div class="watch-btn play-btn">
                            	<i class='bx bx-right-arrow bx-md'></i>
                        	</div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="item" data-radio-target="radio5">
                <div class="streamer_box">
                    <img src="./img/5th_Person.png" class="carImg"/>
                    <div class="box_text">
                        <h2 class="streamer_title">감스트</h2>
                        <div class="streamer_type">스포츠</div>
                        <a href="review?streamer_idx=0">
                        	<div class="watch-btn play-btn">
                            	<i class='bx bx-right-arrow bx-md'></i>
                        	</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- == 오늘의 최고 시청 방송 == -->
<section class="todays">
    <div class="title">
        <h3>오늘의 최고 시청 방송</h3>
    </div>
    <div class="todays_row">
    
    	 <c:forEach var="popVideo" items="${popVideoInfo }">
    		<div class="todays_col colTop">
    			<a href="http://www.youtube.com/watch?v=${popVideo.video_id }" style="width:100%, height:100%">
    				<figure>
    					<img src="${popVideo.thumbnail_url }" class="humanIcon"/>
    					<figcaption class="humanIconCap">${popVideo.video_title }</figcaption>
    					<figcaption class="humanIconCap comments">댓글 : ${popVideo.video_comment_count }</figcaption>
    				
    				<c:choose>	
    					<c:when test="${popVideo.video_like_count == 0}">
    						<figcaption class="humanIconCap">👍 비공개</figcaption>
    					</c:when>
    					<c:otherwise>
    						<figcaption class="humanIconCap">👍${popVideo.video_like_count }</figcaption>
    					</c:otherwise>
    					</c:choose> 
    					<img src="./img/6-10.png" class="youtubeLogo"/>
    				</figure>
    			</a>
    		</div>
    	</c:forEach> 
   
    </div>
</section>

<section class="explore">
	<div class="explore-content">
	
	<c:choose>
		<c:when test="${loginUserBean.userLogin == true }">
			<p>${loginUserBean.user_name }님이 좋아하실 지도 모르는 방송입니다!</p>
			
				<c:forEach var="info" items="${streamerInfo }">
					<div class="suggestBox">
					<a href="http://www.youtube.com/${info.channel_id }">
						<figure>
						<div><img src="${info.thumbnail_url }" class="suggest_Img"/></div>
						<div>${info.channel_title }</div>
						<div>구독자 : ${info.channel_subscriber_count } 명</div>
						<div>영상 : ${info.channel_video_count } 개</div>
						</figure>
					</a>
					</div>
				</c:forEach>
		</c:when>
		
		<c:when test="${loginUserBean.userLogin == false }">
			<h3>이런 방송은 어떠세요?</h3>
			
				<c:forEach var="info" items="${streamerInfo }">
					<div class="suggestBox">
					<a href="http://www.youtube.com/${info.channel_id }">
						<figure>
						<div><img src="${info.thumbnail_url }" class="suggest_Img"/></div>
						<div>${info.channel_title }</div>
						<div>구독자 : ${info.channel_subscriber_count } 명</div>
						<div>영상 : ${info.channel_video_count } 개</div>
						</figure>
					</a>
					</div>
				</c:forEach>
		</c:when>
	</c:choose>
	
	
<%-- 		<h3>이런 방송은 어떠세요?</h3>
		<div class="line"></div>
		<p>"ID"님이 시청한 방송과 비슷합니다!</p>
			
				<c:forEach var="info" items="${streamerInfo }">
					<div class="suggestBox">
					<a href="http://www.youtube.com/${info.channel_id }">
						<figure>
						<div><img src="${info.thumbnail_url }" class="suggest_Img"/></div>
						<div>${info.channel_title }</div>
						<div>구독자 : ${info.channel_subscriber_count } 명</div>
						<div>영상 : ${info.channel_video_count } 개</div>
						</figure>
					</a>
					</div>
				</c:forEach> --%>
			
	</div>

</section>

<!-- movies section start(주간 스트리머) -->
<section class="movies container" id="popular">
    <!-- heading -->
    <div class="heading">
        <h2 class="heading-title">스트리머</h2>
    </div>
    <!-- movies content -->
    <div class="movies-content">
        <!-- streamers content -->
        <div class="streamers-content">
            <!-- streamer box 1 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 2 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 3 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 4 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 5 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 6 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 7 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 8 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 9 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>

                    </a>
                </div>
            </div>
            <!-- streamer box 6 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 7 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 8 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 9 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 10 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- streamer box 11 -->
            <div class="streamer-box">
                <img src="./img/img1.png" alt="" class="streamer-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- movies section end -->
<!-- next page -->
<div class="more-page">
    <a href="home/more_page" class="more-btn">More streamer page</a>
</div>
<c:import url="/view/home_include/footer.jsp"/>
<script src="home/script.js"></script>
</body>
</html>