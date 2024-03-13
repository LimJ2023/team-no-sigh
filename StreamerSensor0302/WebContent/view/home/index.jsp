<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="home/style.css" />
<!-- link swiper css -->
<link rel="stylesheet" href="swiper-bundle.min.css">
<!-- Fav icon -->
<link rel="shortcut icon" href="img/fav-icon.png" type="image/x-icon">
<!-- box icons -->
<link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="home/carousel.css">
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

	<!-- 캐러셀 -->
	<div class="sugg-content">
		<div class="carousel-test">
			<input type="radio" name="position" id="radio1" /> <input
				type="radio" name="position" id="radio2" /> <input type="radio"
				name="position" checked id="radio3" /> <input type="radio"
				name="position" id="radio4" /> <input type="radio" name="position"
				id="radio5" />
			<div class="carousel">
				<c:forEach var="mainFive" items="${fiveStreamer }">
					<c:set var="radio" value="${radio +1 }" />
					<div class="item" data-radio-target="radio${radio }">
						<div class="streamer_box">
							<img src="img/streamer_profile/${mainFive.streamer_image }.png"
								class="carImg profileBocchi" />
							<div class="box_text">
								<h2 class="streamer_title">${mainFive.streamer_id }</h2>
								<a href="review?streamer_idx=${mainFive.streamer_idx }">
									<div class="watch-btn play-btn">
										<i class='bx bx-right-arrow bx-md'></i>
									</div>
								</a>

							</div>
						</div>
					</div>
				</c:forEach>
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
					<a href="http://www.youtube.com/watch?v=${popVideo.video_id }"
						style="width: 100%, height:100%">
					
							<img src="${popVideo.thumbnail_url }" class="humanIcon" />
							<div class="humanIconCap">${popVideo.video_title }</div>
							<div class="humanIconCap comments">댓글 :
								${popVideo.video_comment_count }</div>

							<c:choose>
								<c:when test="${popVideo.video_like_count == 0}">
									<figcaption class="humanIconCap">👍 비공개</figcaption>
								</c:when>
								<c:otherwise>
									<figcaption class="humanIconCap">👍${popVideo.video_like_count }</figcaption>
								</c:otherwise>
							</c:choose>
							<!-- <img src="./img/6-10.png" class="youtubeLogo" /> -->
						
					</a>
				</div>
			</c:forEach>

		</div>
	</section>

<%
	int randomIndex = (int)(Math.random() * 5);
	request.setAttribute("randomIndex", randomIndex);
%>

<%-- <section class="test">
	<c:forEach var="random" items="${randomStreamerInfo }" varStatus = "status">
		<c:if test="${status.index == randomIndex }">
	<h3>${random.channel_title }</h3>
	<h3>${random.channel_id }</h3>
	<h3>${random.channel_subscriber_count }</h3>
	<h3>${random.channel_video_count }</h3>
	<h3>${random.thumbnail_url }</h3>
	</c:if>
	</c:forEach>
</section>  --%>

 <%-- <section class="test">
	<c:forEach var="random" items="${randomStreamerInfo }">
	<h3>${random.channel_title }</h3>
	<h3>${random.channel_id }</h3>
	<h3>${random.channel_subscriber_count }</h3>
	<h3>${random.channel_video_count }</h3>
	</c:forEach>
</section>  --%>

	<section class="explore">
		<div class="explore-content">

			<%-- <c:choose>
				<c:when test="${loginUserBean.userLogin == true }">
					<p>${loginUserBean.user_name }님이좋아하실 지도 모르는 방송입니다!</p>
					<c:out value="${randomSuggstion.streamer_id }"></c:out>
					<c:forEach var="random" items="${randomSuggestion }" end="0">
						<div class="suggestBox">
							<a href="review?streamer_idx=${random.streamer_idx }">
								<figure>
									<div>
										<img src="img/streamer_profile/${random.streamer_image }.png"
											class="suggest_Img" />
									</div>
									<div>${random.streamer_id }</div>
								</figure>
							</a>
						</div>
					</c:forEach>
				</c:when> --%>

				<%-- <c:when test="${loginUserBean.userLogin == false }"> --%>
					<%-- <h3>이런 방송은 어떠세요?</h3>
					<c:forEach var="info" items="${streamerInfo }">
						<div class="suggestBox">
							<a href="http://www.youtube.com/${info.channel_id }">
								<figure>
									<div>
										<img src="${info.thumbnail_url }" class="suggest_Img" />
									</div>
									<div>${info.channel_title }</div>
									<div>구독자 : ${info.channel_subscriber_count } 명</div>
									<div>영상 : ${info.channel_video_count } 개</div>
								</figure>
							</a>
						</div>
					</c:forEach> --%>
				<%-- </c:when> --%>
			<%-- </c:choose> --%>
			
			<h3>이런 방송은 어떠세요?</h3>
			<c:forEach var="random" items="${randomStreamerInfo }" varStatus = "status">
			<c:if test="${status.index == randomIndex }">
				<div class="suggestBox">
				<a href="http://www.youtube.com/${random.customUrl }">
				<figure>
			<div>
						<img src="${random.thumbnail_url }" class="suggest_Img" />
						</div>
							<div>${random.channel_title }</div>
							<div>구독자 : ${random.channel_subscriber_count } 명</div>
							<div>영상 : ${random.channel_video_count } 개</div>
						</figure>
					</a>
				</div>

	</c:if>
	</c:forEach>
			
			
		</div>
	</section>


	<!-- movies section start(주간 스트리머) -->
	<section class="movies container" id="popular">
		<!-- heading -->
		<div class="heading">
			<h2 class="heading-title">연관 플레이리스트</h2>
		</div>
		<!-- movies content -->
		<div class="movies-content">
			<!-- streamers content -->
			<div class="streamers-content">
				<!-- streamer box 1 -->
				
				 <c:forEach var="randomVideo" items="${randomStreamerInfo }" begin="6" end="11">
					 
					 <div class="streamer-box">
					 <a href="https://www.youtube.com/playlist?list=${randomVideo.videoId }" class="pListAnchor">
							 <img src="${randomVideo.videoThumbUrl }" alt=""  class="streamer-box-img"/> 
							 <div class="box-text"> 
								<h2 class="streamer-title">${randomVideo.title }</h2>
								<h2></h2>
							 </div>
							 </a>
						</div>
					 
				</c:forEach> 
				
				 
				 <!-- <div class="streamer-box">
					<img src="./img/fiveCarousel/streamer_profile_1.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">감스트</h2>
						<span class="streamer-type">게임</span>  -->
						<!-- 여기에 2번째 html -->
						 <!-- <a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div>  -->
				<!-- streamer box 2 -->
				<!-- <div class="streamer-box">
					<img src="./img/fiveCarousel/streamer_profile_2.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">케인</h2>
						<span class="streamer-type">게임</span> -->
						<!-- 여기에 2번째 html -->
						<!-- <a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div> -->
				<!-- streamer box 3 -->
				<!-- <div class="streamer-box">
					<img src="./img/fiveCarousel/streamer_profile_3.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">머독</h2>
						<span class="streamer-type">게임</span> -->
						<!-- 여기에 2번째 html -->
						<!-- <a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div> -->
				<!-- streamer box 4 -->
				<!-- <div class="streamer-box">
					<img src="./img/fiveCarousel/streamer_profile_4.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">빅헤드</h2>
						<span class="streamer-type">게임</span> -->
						<!-- 여기에 2번째 html -->
						<!-- <a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div> -->
				<!-- streamer box 5 -->
				<!-- <div class="streamer-box">
					<img src="./img/fiveCarousel/streamer_profile_5.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">한동숙</h2>
						<span class="streamer-type">게임</span> -->
						<!-- 여기에 2번째 html -->
						<!-- <a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div> -->
				<!-- streamer box 6 -->
				<!-- <div class="streamer-box">
					<img src="./img/carousel_test/281.png" alt="" class="streamer-box-img">
					<div class="box-text">
						<h2 class="streamer-title">쿠로미</h2>
						<span class="streamer-type">게임</span> -->
						<!-- 여기에 2번째 html -->
						<!-- <a href="play-page.html" class="watch-btn play-btn"> <i
							class='bx bx-right-arrow'></i>
						</a>
					</div>
				</div> -->
				
			</div>
		</div>
	</section>
	<!-- movies section end -->
	<!-- next page -->
	<!-- <div class="more-page">
		<a href="home/more_page" class="more-btn">More streamer page</a>
	</div> -->
	<c:import url="/view/home_include/footer.jsp" />
	<script src="home/script.js"></script>
</body>
</html>