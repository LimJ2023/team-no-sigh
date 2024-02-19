<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

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
		    <!-- nav container(위쪽 로고부터 검색창, 회원이미지까지) home_include 안의 logo_include로 뺴냄 -->
    <c:import url="/view/home_include/logo_include.jsp"/>
    <!-- navbar (왼쪽 사이드바) home_include 안의 left_include로 빼냄 -->
    <c:import url="/view/home_include/left_sideBar.jsp"/>
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

			
			<table class="table filterTable">
				<tr class="rank-table-filters">
							<td class="td_filter">
							</td>
							<td class="td_filter">
								<input type="text" id="myInput" onkeyup="filterFunction()" placeholder="스트리머 검색" class="searchInput"/>
							</td>
							<td class="td_filter">
								<input type="text" id="titleInput" onkeyup="filterTitleFunction()" placeholder="제목 검색" class="searchInput"/>
							</td>
							<td class="td_filter"></td>
							<td class = "td_filter">
								<select name="categorySelect" id="categorySelect"
									onchange="selectFunction()" class="categorySelect">
								<option value="" class="categoryOption">Category</option>
								<option value="게임" class="categoryOption">게임</option>
								<option value="수다" class="categoryOption">수다</option>
							</select>
						</td>
					</tr>
			
			</table>
			
			
			
			
		

		</div>


		<div class="rankContents" style="border-radius: 1rem">
			<h2 class="tableH2">${ranking.rank_date } 순위</h2>
			<div class="table-responsive">
				<table class="table rank-table">
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
						
					<tr id = "table_row">
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
<script src="leaderBoard/filter.js"></script>
</html>