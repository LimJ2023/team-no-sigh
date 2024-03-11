<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<script>
		// rating 값을 받아서 해당 개수만큼의 별을 생성하는 함수
		function generateStars(rating) {
			let starsHTML = '';

			// 별의 최대 개수
			const maxStars = 5;

			// rating 값에 따라 별의 개수를 결정
			const numberOfStars = Math.min(Math.max(0, rating), maxStars);

			// 별의 HTML을 생성
			for (let i = 0; i < numberOfStars; i++) {
				starsHTML += '<i class="bx bxs-star"></i>';
			}

			return starsHTML;
		}
	</script>
	<header>
		<!-- nav container(위쪽 로고부터 검색창, 회원이미지까지) home_include 안의 logo_include로 뺴냄 -->
		<c:import url="/view/home_include/logo_include.jsp" />
	</header>
	<section>
		<div class="reviews_wrap">
			<div class="reviews_header">
				<div class="header_streamerInfo">
					<div class="streamerInfo_img">
						<img src="img/streamer_profile/${streamer.streamer_image }.png">
					</div>
					<div class="streamerInfo_cont">

						<div class="streamer_id">${streamer.streamer_id }</div>
						<div class="streamer_followers">팔로워수 :
							${streamer.streamer_followers }</div>
						<!-- <div class="streamer_trends">최근 상승세</div> -->
						<div class="streamer_comments">댓글 수 : ${commentCount }개</div>
					</div>

					<div class="related_streamers">
						<p>연관 주제</p>

					</div>

				</div>
				<div class="header_recentComments">
					<c:forEach var="rating" items="${ratingList }">
						<div class="recentComments_item">
							<div class="cmt_wrap">
								<div class="profile_area">
									<img src="img/user_profile/${rating.user_image }.png">
								</div>
								<div class="cont_area">
									
									<div class="cmt_head">${rating.user_name}/ date :
										${rating.streamer_rating_date }</div>
									<div class="cmt_cont">${rating.rating_comment }</div>
								</div>
								<c:forEach var="i" begin="1" end="${rating.streamer_rating}">
										<i class="bx bxs-star"></i>
									</c:forEach>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="star-container">
				<div class="star-widget">
					<form:form action="review_pro" method="get"
						modelAttribute="streamerRating">
						<form:hidden path="streamer_idx" />
						<form:hidden path="user_idx" />
						<div class="stars">
							<form:radiobutton path="streamer_rating" id="rate-5" value="5" />
							<label for="rate-5"><i class='bx bxs-star'></i></label>
							<form:radiobutton path="streamer_rating" id="rate-4" value="4" />
							<label for="rate-4"><i class='bx bxs-star'></i></label>
							<form:radiobutton path="streamer_rating" id="rate-3" value="3" />
							<label for="rate-3"><i class='bx bxs-star'></i></label>
							<form:radiobutton path="streamer_rating" id="rate-2" value="2" />
							<label for="rate-2"><i class='bx bxs-star'></i></label>
							<form:radiobutton path="streamer_rating" id="rate-1" value="1" />
							<label for="rate-1"><i class='bx bxs-star'></i></label>
						</div>


						<div class="textarea">
							<form:textarea path="rating_comment" cols="30"
								placeholder="스트리머에게 의견을 남겨주세요"></form:textarea>
						</div>
						<div class="btn">
							<form:button>게시</form:button>
						</div>
					</form:form>
				</div>
			</div>

			<div class="reviews_container">
				<div class="streaming_list">
					<c:forEach var="stream" items="${streamList }">
						<div class="streaming_item">
							<div class="streaming_img">
								<a href="${stream.streaming_url }"> <img
									src="img/thumbnail/${stream.streaming_image}.png">
								</a>
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
	</section>

</body>
</html>