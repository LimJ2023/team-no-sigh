<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- nav -->
    <div class="nav container">
        <!-- logo -->
        <a href="home" class="logo">
            Streamer<span>Sensor</span>
        </a>
        <!-- search box (검색)-->
        <div class="search-box">
            <input type="search" name="" id="search-input" placeholder="Search streamer">
            <i class='bx bx-search'></i>
        </div>
        <!-- user 사진 제대로 찾아서 넣어야함 (여기는 마이페이지랑 로그인되는 버튼구현)-->
        <a href="login/html.html" class="user">
            <img src="img/Person_Icon.png" alt="" class="user-img">
        </a>
        <!-- navbar (각각 달아줘야함)-->
        <div class="navbar">
            <a href="home" class="nav-link nav-active">
                <i class='bx bx-home'></i>
                <span class="nav-link-title">home</span>
            </a>
            <a href="trend" class="nav-link">
                <i class='bx bxs-hot'></i>
                <span class="nav-link-title">trending</span>
            </a>
            <a href="leaderBoard" class="nav-link">
                <i class='bx bx-bar-chart-alt-2'></i>
                <span class="nav-link-title">leaderBoard</span>
            </a>
             <a href="board" class="nav-link">
                <i class='bx bx-message-detail'></i>
                <span class="nav-link-title">community</span>
            </a>
           <!--  <a href="./noticeBoardPage/noticeBoard.html" class="nav-link">
                <i class='bx bx-message-detail'></i>
                <span class="nav-link-title">community</span>
            </a> -->
            <a href="#home" class="nav-link">
                <i class='bx bx-news'></i>
                <span class="nav-link-title">news</span>
            </a>
            <a href="admin" class="nav-link">
                <i class='bx bx-wrench'></i>
                <span class="nav-link-title">관리자페이지 진입 버튼1</span>
            </a>
        </div>
    </div>
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
                    <img src="./img/2nd_Person.png" class="carImg"/>
                    <div class="box_text">
                        <h2 class="streamer_title">김지섭</h2>
                        <div class="streamer_type">게임</div>
                        <div class="watch-btn play-btn">
                            <i class='bx bx-right-arrow bx-md'></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item" data-radio-target="radio3">
                <div class="streamer_box">
                    <img src="./img/3rd_Person.png" class="carImg"/>
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
                    <img src="./img/4th_Person.png" class="carImg"/>
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
            <figure>
                <img src="./img/0101.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송1</figcaption>
                <figcaption>view: 12k</figcaption>
                <img src="./img/6-10.png" class="youtubeLogo"
                    onclick="javascript:window.location='https://www.youtube.com/';"/>
            </figure>
            
        </div>

        <div class="todays_col">
            <figure>
                <img src="./img/0102.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송2</figcaption>
                <figcaption>view: 10k</figcaption>
                <img src="./img/6-10.png" class="youtubeLogo"
                    onclick="javascript:window.location='https://www.youtube.com/watch?v=d-p4mMGYI7o';"/>
            </figure>
            
        </div>

        <div class="todays_col">
            <figure>
                <img src="./img/0103.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송3</figcaption>
                <figcaption>view: 4.5k</figcaption>
                <img src="./img/6-10.png" class="youtubeLogo"
                    onclick="javascript:window.location='https://www.youtube.com/watch?v=ZdJSHEczi_0';"/>
            </figure>
            
        </div>

        <div class="todays_col">
            <figure>
                <img src="./img/0104.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송4</figcaption>
                <figcaption>view: 3k</figcaption>
                <img src="./img/chhzk.png" class="chzzkLogo"
                    onclick="javascript:window.location='https://chzzk.naver.com/';"/>
            </figure>
            
        </div>

        <div class="todays_col">
            <figure>
                <img src="./img/0105.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송5</figcaption>
                <figcaption>view: 1.2k</figcaption>
                <img src="./img/6-10.png" class="youtubeLogo"
                    onclick="javascript:window.location='https://www.youtube.com/watch?v=ZdJSHEczi_0';"/>
            </figure>
            
        </div>
        <div class="todays_col">
            <figure>
                <img src="./img/0106.png" class="humanIcon"/>
                <figcaption class="humanIconCap">방송6</figcaption>
                <figcaption>view: 3k</figcaption>
                <img src="./img/chhzk.png" class="chzzkLogo"
                    onclick="javascript:window.location='https://chzzk.naver.com/';"/>
            </figure>
            
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
            <!-- movie box 6 -->
            <div class="movie-box">
                <img src="./img/img1.png" alt="" class="movie-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- movie box 7 -->
            <div class="movie-box">
                <img src="./img/img1.png" alt="" class="movie-box-img">
                <div class="box-text">
                    <h2 class="streamer-title">감스트</h2>
                    <span class="streamer-type">게임</span>
                    <!-- 여기에 2번째 html -->
                    <a href="play-page.html" class="watch-btn play-btn">
                        <i class='bx bx-right-arrow'></i>
                    </a>
                </div>
            </div>
            <!-- movie box 8 -->
            <div class="movie-box">
                <img src="./img/img1.png" alt="" class="movie-box-img">
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
    <a href="./index2.html" class="more-btn">More streamer page</a>
</div>
<script src="home/script.js"></script>
</body>
</html>