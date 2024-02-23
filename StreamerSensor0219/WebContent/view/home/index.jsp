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
                        <a href="review_page/review.html">
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
                        <div class="watch-btn play-btn">
                            <i class='bx bx-right-arrow bx-md'></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item" data-radio-target="radio5">
                <div class="streamer_box">
                    <img src="./img/5th_Person.png" class="carImg"/>
                    <div class="box_text">
                        <h2 class="streamer_title">임요한</h2>
                        <div class="streamer_type">게임</div>
                        <div class="watch-btn play-btn">
                            <i class='bx bx-right-arrow bx-md'></i>
                        </div>
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
    
        <div class="todays_col colTop">
        <a href="http://www.youtube.com" style="width: 100%, height:100%">
            <figure>
                <img src="./img/0101.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송1</figcaption>
                <figcaption>view: 12k</figcaption>
                <img src="./img/6-10.png" class="youtubeLogo"/>
<!--                 <img src="./img/6-10.png" class="youtubeLogo"
                    onclick="javascript:window.location='https://www.youtube.com/';"/> -->
            </figure>
            </a>
        </div>

        
        <div class="todays_col">
        <a href="http://www.youtube.com" style="width: 100%, height:100%">
            <figure>
                <img src="./img/0102.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송2</figcaption>
                <figcaption>view: 10k</figcaption>
                <img src="./img/6-10.png" class="youtubeLogo"/>
            </figure>
            </a>
        </div>

        <div class="todays_col">
        <a href="http://www.youtube.com" style="width: 100%, height:100%">
            <figure>
                <img src="./img/0103.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송3</figcaption>
                <figcaption>view: 4.5k</figcaption>
                <img src="./img/6-10.png" class="youtubeLogo"/>
            </figure>
            </a>
        </div>

        <div class="todays_col">
        <a href="https://chzzk.naver.com/" style="width: 100%, height:100%">
            <figure>
                <img src="./img/0104.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송4</figcaption>
                <figcaption>view: 3k</figcaption>
                <img src="./img/chhzk.png" class="chzzkLogo"/>
            </figure>
            </a>
        </div>

        <div class="todays_col">
        <a href="http://www.youtube.com" style="width: 100%, height:100%">
            <figure>
                <img src="./img/0105.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송5</figcaption>
                <figcaption>view: 1.2k</figcaption>
                <img src="./img/6-10.png" class="youtubeLogo"/>
            </figure>
            </a>
        </div>
        <div class="todays_col">
        <a href="https://chzzk.naver.com/" style="width: 100%, height:100%">
            <figure>
                <img src="./img/0106.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송6</figcaption>
                <figcaption>view: 3k</figcaption>
                <img src="./img/chhzk.png" class="chzzkLogo"/>
            </figure>
           </a> 
        </div>
    </div>
</section>

<section class="explore">
    <div class="explore-content">
        <h3>이런 방송은 어떠세요?</h3>
        <div class="line"></div>
        <p>"Id"님이 본 방송과 비슷한 방송입니다!</p>

        <div class="suggestBox">
            <figure>
                <img src="./img/Person_Icon.png" class="suggest_Img"/>
                <figcaption>스트리머 이름</figcaption>
            </figure>
        </div>

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