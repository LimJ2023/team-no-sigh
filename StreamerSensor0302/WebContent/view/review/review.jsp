<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="review/review_style.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<title>리뷰 작성 페이지</title>
</head>
<body>

<header>
    <!-- nav container(위쪽 로고부터 검색창, 회원이미지까지) home_include 안의 logo_include로 뺴냄 -->
    <c:import url="/view/home_include/logo_include.jsp"/>
    <!-- navbar (왼쪽 사이드바) home_include 안의 left_include로 빼냄 -->
    <c:import url="/view/home_include/left_sideBar.jsp"/>
</header>

	<div class="reviews_wrap">
		<div class="reviews_header">
			<div class="header_streamerInfo">
				<div class="streamerInfo_img">
					<img src="img/streamer_profile/${streamer.streamer_img }.png">
				</div>
				<div class="streamerInfo_cont">

					<div class="streamer_id">${streamer.streamer_id }</div>
					<div class="streamer_followers">팔로워수 :
						${streamer.streamer_followers }</div>
					<div class="streamer_trends">최근 상승세</div>
					<div class="streamer_comments">댓글 수 : 50개</div>
				</div>

				<div class="related_streamers">
					<p>연관 스트리머</p>
					<div class="streamer_icon">
						<img src="img/admin/profile2.png">
					</div>
					<div class="streamer_icon">
						<img src="img/admin/profile3.png">
					</div>
					<div class="streamer_icon">
						<img src="img/admin/profile4.png">
					</div>
				</div>

			</div>
			<div class="header_recentComments">
				<div class="recentComments_item">
					<div class="cmt_wrap">
						<div class="profile_area">
							<img src="img/admin/KITA2.JPG">
						</div>
						<div class="cont_area">
							<div class="cmt_head">id : 이쿠요 키타 / date : 2024-01-21</div>
							<div class="cmt_cont">좋은 음악을 들려주는 유튜버에요.</div>
						</div>
					</div>
				</div>
				<div class="recentComments_item">
					<div class="cmt_wrap">
						<div class="profile_area">
							<img src="img/admin/profile2.png">
						</div>
						<div class="cont_area">
							<div class="cmt_head">id : 이지치 니지카 / date : 2024-01-21</div>
							<div class="cmt_cont">멋진 연주입니다.</div>
						</div>
					</div>
				</div>
				<div class="recentComments_item">
					<div class="cmt_wrap">
						<div class="profile_area">
							<img src="img/admin/profile3.png">
						</div>
						<div class="cont_area">
							<div class="cmt_head">id : 야마다 료 / date : 2024-01-20</div>
							<div class="cmt_cont">구독했습니다.</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="star-container">
			<div class="star-widget">
				<div class="stars">
					<input type="radio" name="rate" id="rate-5"> <label
						for="rate-5"><i class='bx bxs-star'></i></label> <input
						type="radio" name="rate" id="rate-4"> <label for="rate-4"><i
						class='bx bxs-star'></i></label> <input type="radio" name="rate"
						id="rate-3"> <label for="rate-3"><i
						class='bx bxs-star'></i></label> <input type="radio" name="rate"
						id="rate-2"> <label for="rate-2"><i
						class='bx bxs-star'></i></label> <input type="radio" name="rate"
						id="rate-1"> <label for="rate-1"><i
						class='bx bxs-star'></i></label>
				</div>

				<form action="review_pro">
					<header>최고에요!</header>
					<div class="textarea">
						<textarea cols="30" placeholder="스트리머에게 의견을 남겨주세요"></textarea>
					</div>
					<div class="btn">
						<button type="submit">게시</button>
					</div>
				</form>
			</div>
		</div>

		<div class="reviews_container">
			<div class="streaming_list">

				<c:forEach var="stream" items="${streamList }">

					<div class="streaming_item">
						<div class="streaming_img">
							<img src="img/thumbnail/${stream.img_url}.png">
						</div>
						<div class="streaming_info">
							<div class="streaming_desc">
								${stream.streaming_description }
								<div class="flex justy-between size-md"></div>
							</div>
							<div class="streaming_info_right">
								<div class="like">
									<i class='bx bx-heart bx-md'></i> <span>0</span>
								</div>
								<div class="list">
									<i class='bx bxs-comment-detail bx-md'></i> <span>0</span>
								</div>
							</div>

						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>

	<script src="script.js"></script>
</body>
</html>