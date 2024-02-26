<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${root }home/style.css" />
<!-- link swiper css -->
<link rel="stylesheet" href="swiper-bundle.min.css">
<!-- Fav icon -->
<link rel="shortcut icon" href="img/fav-icon.png" type="image/x-icon">
<!-- box icons -->
<link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="${root }home/carousel.css">
<title>Streamer Sensor1</title>
</head>
<body>
	<!-- header -->
	<header>
		<!-- nav container(위쪽 로고부터 검색창, 회원이미지까지) home_include 안의 logo_include로 뺴냄 -->
		<c:import url="/view/home_include/logo_include.jsp" />
		<!-- navbar (왼쪽 사이드바) home_include 안의 left_include로 빼냄 -->
		<c:import url="/view/home_include/left_sideBar.jsp" />
	</header>



	<div class="sugg-content">

		<!-- streamers section start(주간 스트리머) -->
		<section class="streamers container" id="popular">
			<!-- heading -->
			<div class="heading">
				<form action="#">
					<h2 class="heading-title">스트리머</h2>
					<label for="lang">카테고리</label> <select name="category" id="lang">
						<option value="game">게임</option>
						<option value="sports">스포츠</option>
						<option value="bora">보라</option>
						<option value="butu">버튜버</option>
						<option value="esports">e스포츠</option>
						<option value="music">음악</option>
						<option value="trip">여행</option>
						<option value="yabang">야방</option>
					</select> <input type="submit" value="Submit" />
				</form>

			</div>
			<!-- streamers content -->
			<div class="streamers-content">
				<!-- streamer box 1 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 2 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 3 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 4 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 5 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 6 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 7 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 8 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 9 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 10 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 11 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
				<!-- streamer box 12 -->
				<div class="streamer-box">
					<img src="${root }./img/img1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>
						<!-- 여기에 2번째 html -->
						<a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>
			</div>
		</section>
	</div>





	<!-- more page -->

	<script src="${root }./home/script.js"></script>
	<script>
        /* =========scroll progress bar(오른쪽 아래 스크롤 내리면 원형) =========== */

        let scrollPrecentage = () => {
            let scrollProgress = document.getElementById("progress");
            let progressValue = document.getElementById('progress-value');
            let pos = document.documentElement.scrollTop;
            let calcHeight = document.documentElement.scrollHeight - document.documentElement.clientHeight;
            let scrollValue = Math.round(pos * 100 / calcHeight);
            scrollProgress.style.background = `conic-gradient(#e70634 ${scrollValue}%, #2b2f38 ${scrollValue}%)`;
        }
        window.onscroll = scrollPrecentage;
        window.onload = scrollPrecentage;
    </script>
</body>

</html>