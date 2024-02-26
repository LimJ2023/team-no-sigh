<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" href="home/trend.css" />
<!-- Fav icon -->
<link rel="shortcut icon" href="img/fav-icon.png" type="image/x-icon" />
<!-- box icons -->
<link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="home/carousel.css" />
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<title>Streamer Sensor</title>
</head>
<body>
	<!-- header -->
	<header>
		<!-- nav container(위쪽 로고부터 검색창, 회원이미지까지) home_include 안의 logo_include로 뺴냄 -->
		<c:import url="/view/home_include/logo_include.jsp" />
		<!-- navbar (왼쪽 사이드바) home_include 안의 left_include로 빼냄 -->
		<c:import url="/view/home_include/left_sideBar.jsp" />
	</header>

	<section class="trend-section">
		<div class="rank-container">
			<div class="rank-content-horizon">
				<h2>가장 있기있는 방송 목록</h2>
				<div class="horizon-buttons">
					<button id="age">연령대별</button>
					<button>국적별</button>
					<button id="trendBtn">추세별</button>
					<button id="delBtn">목록 삭제하기</button>
				</div>
			</div>
			<div class="rank-content-vertical">
				<div class="rank-ver-list" id="first_list">
					<div class="list-category">리뷰</div>
					<div class="rank-info">
						<div class="rank-img">
							<img src="img/0101.png" />
						</div>
						<div class="rank-info-foot">
							<div class="rank-name">리뷰1</div>
							<div class="rank-views">100</div>
							<div class="rank-trend">
								<i class='bx bx-right-top-arrow-circle bx-md'></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="rank-ver-list" id="second_list">
				<div class="list-category">게임</div>
				<div class="rank-info">
					<div class="rank-img">
						<img src="img/0106.png" />
					</div>
					<div class="rank-info-foot">
						<div class="rank-name">게임1</div>
						<div class="rank-views">400</div>
						<div class="rank-trend">
							<i class='bx bx-up-arrow-circle bx-md'></i>
						</div>
					</div>
				</div>
			</div>
			<div class="rank-ver-list" id="third_list">
				<div class="list-category">음악</div>
				<div class="rank-info">
					<div class="rank-img">
						<img src="img/0101.png" />
					</div>
					<div class="rank-info-foot">
						<div class="rank-name">음악1</div>
						<div class="rank-views">400</div>
						<div class="rank-trend">
							<i class='bx bx-up-arrow-circle bx-md'></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--  -->
	</section>


	<c:import url="/view/home_include/footer.jsp" />


	<script src="home/list.js"></script>
	<script src="home/trend.js"></script>

</body>
</html>