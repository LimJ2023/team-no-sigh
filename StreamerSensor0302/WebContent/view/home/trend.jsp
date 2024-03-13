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
					<button id="refreshBtn">최신 목록</button>
					<button id="youtubeBtn">유튜브 인기 영상</button>
				</div>
			</div>
			<div class="rank-content-vertical">
			 	<div class="rank-ver-list" id="list">
					<c:forEach var="item" items="${streamList }" begin="0" end="15">
						<div class="rank-info">
						<div class="rank-img">
						<a href="https://www.youtube.com/watch?v=${item.streaming_url }">
							<img src="img/thumbnail/${item.streaming_image}.png" />
						</a>
						</div>
						<div class="rank-name">${item.streaming_description }</div>
						<%-- <div class="rank-info-foot">
							<div class="rank-views"><p>조회수</p>${item.viewCount}</div>
							<div class="rank-likes"><p>좋아요</p>${item.likesCount}</div>
						</div> --%>
					</div>
					</c:forEach>
					
				</div>
				
			</div>
		</div>
	</section>


	<c:import url="/view/home_include/footer.jsp" />

	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="home/list.js"></script>
	<script src="home/trend.js"></script>

</body>
</html>