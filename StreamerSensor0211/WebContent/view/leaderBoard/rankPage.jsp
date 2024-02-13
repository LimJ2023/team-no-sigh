<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="leaderBoard/rankPage.css" />
<!-- 	<!-- link swiper css -->
<link rel="stylesheet" href="swiper-bundle.min.css">
<!--     Fav icon -->
<link rel="shortcut icon" href="../img/fav-icon.png" type="image/x-icon">
<!-- box icons -->
<link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
	rel="stylesheet">
<title>Streamer Sensor</title>
</head>
<body>
	<p>test 03</p>
	<!-- header -->
	<header>
		<!-- nav -->
		<div class="nav container">
			<!-- logo -->
			<a href="${pageContext.request.contextPath}/home" class="logo"> Streamer<span>Sensor</span>
			</a>
			<!-- search box (검색)-->
			<div class="search-box">
				<input type="search" name="" id="search-input"
					placeholder="Search streamer"> <i class='bx bx-search'></i>
			</div>
			<!-- user 사진 제대로 찾아서 넣어야함 (여기는 마이페이지랑 로그인되는 버튼구현)-->
			<a href="../login/html.html" class="user"> <img
				src="img/Person_Icon.png" alt="" class="user-img">
			</a>
			<!-- navbar (각각 달아줘야함)-->
			<div class="navbar">
				<a href="#" class="nav-link nav-active"> <i
					class='bx bx-home'></i> <span class="nav-link-title">home</span>
				</a> <a href="../trend_page/trendPage.html" class="nav-link"> <i
					class='bx bxs-hot'></i> <span class="nav-link-title">trending</span>
				</a> <a href="leaderBoard" class="nav-link"> <i
					class='bx bx-bar-chart-alt-2'></i> <span class="nav-link-title">leaderBoard</span>
				</a> <a href="../noticeBoardPage/noticeBoard.html" class="nav-link">
					<i class='bx bx-message-detail'></i> <span class="nav-link-title">community</span>
				</a> <a href="#home" class="nav-link"> <i class='bx bx-news'></i> <span
					class="nav-link-title">news</span>
				</a> <a href="admin" class="nav-link"> <i
					class='bx bx-wrench'></i> <span class="nav-link-title">관리자페이지
						진입 버튼1</span>
				</a>
			</div>
		</div>
	</header>


	<section class="rankContainer">


		<div class="rankHead" style="border-radius: 1rem">
			<h2>현재 사용자 :
				
				${users.user_num }
				.
				${users.user_name }
				(
				${users.subscription}
				)
			
			</h2>
			
			<h1 style= color:red> 구독x 계정 테스트 시 UsersDAO 에서 sql문 2번 선택하기</h1>
			<h1 style= color:red> 구독o 계정 테스트 시 UsersDAO 에서 sql문 1번 선택하기</h1>

			
			<!-- <select class="categoryFilter form-control">
				<option value="">Show All</option>
			</select> <br /> <a href="past/rankPagePast1.jsp">과거순위확인(임시)</a> -->

		</div>


		<div class="rankContents" style="border-radius: 1rem">
			<h2 class="tableH2">${ranking.rank_date } 순위</h2>
			<div class="table-responsive">
				<table class="table rank-table filterTable">
					<thead>
						<tr class="rank-table-tr">
							<th scope="col">순위</th>
							<th scope="col" colspan="1">스트리머</th>
							<th scope="col">방송이름</th>
							<th scope="col">팔로워 수</th>
							<th scope="col">카테고리</th>
							
						</tr>
					</thead>

					<tbody class="tbody">
					
					<c:forEach var="ranking" items="${rankings}">
						
					<tr>
						<c:if test="${users.subscription eq 'y'}">
						<td>${ranking.rank_place }</td>
						<td>
							<div class='rank-streamer'>
								<div class='rank-streamer-info'>
									<img src="img/leaderBoard/Person_Icon.png" class="table-icon" />
									
									
										<c:choose>
											<c:when test="${ranking.strm_platform eq '유튜브'}">
												<img src="img/leaderBoard/logo_youtube.png" class='rank-streamer-info-logo' />
											</c:when>
											<c:when test="${ranking.strm_platform eq '치지직'}">
												<img src="img/leaderBoard/logo_chzzk.png" class='rank-streamer-info-logo' />
											</c:when>
										</c:choose>
								</div>
									${ranking.strm_id }
							</div>
						</td>
						<td><div class="rank_desc">${ranking.streaming_desc }</div></td>
						<td>${ranking.strm_followers }</td>
						<td>${ranking.streaming_category }</td>
						
						</c:if>
						
						<c:if test="${users.subscription eq 'n' && ranking.rank_place <= 3}">
						<td>${ranking.rank_place }</td>
						<td>
							<div class='rank-streamer'>
								<div class='rank-streamer-info'>
									<img src="img/leaderBoard/Person_Icon.png" class="table-icon" />
									
									
										<c:choose>
											<c:when test="${ranking.strm_platform eq '유튜브'}">
												<img src="img/leaderBoard/logo_youtube.png" class='rank-streamer-info-logo' />
											</c:when>
											<c:when test="${ranking.strm_platform eq '치지직'}">
												<img src="img/leaderBoard/logo_chzzk.png" class='rank-streamer-info-logo' />
											</c:when>
										</c:choose>
								</div>
									${ranking.strm_id }
							</div>
						</td>
						<td>${ranking.streaming_desc }</td>
						<td>${ranking.strm_followers }</td>
						<td>${ranking.streaming_category }</td>
						</c:if>
					
					</tr>
						
					</c:forEach>
					
						<c:if test="${users.subscription eq 'n'}">
							<td colspan = 7>
								<div class='blackSpace'><img src='img/leaderBoard/coloredLock.png' class='locked'>
								<div class='plzsub'> 구독 후 더 다양한 정보를 확인할 수 있습니다</div></div>
							</td>
						</c:if>
					
					</tbody>
				</table>
			</div>
		</div>

	</section>


	<!--footerTest중-->
	<footer class="footer">
		<div class="footerContainer">
			<div class="footerRow">
				<div class="footerCol">
					<h4>Company</h4>
					<ul>
						<li><a href="#">about us</a></li>
						<li><a href="#">our services</a></li>
						<li><a href="#">privacy policy</a></li>
						<li><a href="#">affiliate program</a></li>
					</ul>
				</div>
				<div class="footerCol">
					<h4>Help</h4>
					<ul>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">How to Use SS</a></li>
						<li><a href="#">QnA</a></li>
					</ul>
				</div>
				<div class="footerCol">
					<h4>Categories</h4>
					<ul>
						<li><a href="#">카테고리1</a></li>
						<li><a href="#">카테고리2</a></li>
						<li><a href="#">카테고리3</a></li>
						<li><a href="#">카테고리4</a></li>
					</ul>
				</div>
				<div class="footerCol">
					<h4>Connect</h4>
					<div class="linkIcons">
						<a href="#"><img src="img/logo/facebook_logo_black.png"
							class="footerIcon f_facebookLogo"></a> <a href="#"><img
							src="img/logo/x_logo_black.png" class="footerIcon f_xLogo"></a>
						<a href="#"><img src="img/logo/instagram_logo_black.png"
							class="footerIcon instaLogo"></a> <a href="#"><img
							src="img/logo/youube_logo_black.png"
							class="footerIcon youtubeLogo"></a> <a href="#"><img
							src="img/logo/email_logo_black.png"
							class="footerIcon emailLogo"></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>