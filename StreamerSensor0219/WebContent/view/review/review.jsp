<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div class="reviews_wrap">
		<div class="reviews_header">
			<div class="header_streamerInfo">
				<div class="streamerInfo_img">
					<a href=""> <img src="img/admin/profile1.png">
					</a>
				</div>
				<div class="streamerInfo_cont">

					<div class="streamer_id">Guitar Hero</div>
					<div class="streamer_followers">팔로워수 : 500</div>
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

				<form action="#">
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
				<div class="streaming_item">
					<div class="streaming_img">
						<a href="#"><img src="img/thumbnail/thumbnail6.png"></a>

					</div>
					<div class="streaming_info">
						<div class="streaming_desc">
							별자리가 될 수 있다면
							<div class="flex justy-between size-md"></div>
						</div>
						<div class="streaming_info_right">
							<div class="like">
								<i class='bx bx-heart bx-md'></i> <span>100</span>
							</div>
							<div class="list">
								<i class='bx bxs-comment-detail bx-md'></i> <span>10</span>
							</div>
						</div>

					</div>
				</div>
				<div class="streaming_item">
					<div class="streaming_img">
						<a href="#"><img src="img/thumbnail/thumbnail7.png"></a>

					</div>
					<div class="streaming_info">
						<div class="streaming_desc">그 밴드</div>
						<div class="streaming_info_right">
							<div class="like">
								<i class='bx bx-heart bx-md'></i> <span>100</span>
							</div>
							<div class="list">
								<i class='bx bxs-comment-detail bx-md'></i> <span>30</span>
							</div>
						</div>
					</div>
				</div>
				<div class="streaming_item">
					<div class="streaming_img">
						<a href="#"><img src="img/thumbnail/thumbnail8.png"></a>

					</div>
					<div class="streaming_info">
						<div class="streaming_desc">베이스 커버</div>
						<div class="streaming_info_right">
							<div class="like">
								<i class='bx bx-heart bx-md'></i> <span>100</span>
							</div>
							<div class="list">
								<i class='bx bxs-comment-detail bx-md'></i> <span>200</span>
							</div>
						</div>
					</div>
				</div>
				<div class="streaming_item">
					<div class="streaming_img">
						<a href="#"><img src="img/thumbnail/thumbnail1.png"></a>

					</div>
					<div class="streaming_info">
						<div class="streaming_desc">솔로 캠핑</div>
						<div class="streaming_info_right">
							<div class="like">
								<i class='bx bx-heart bx-md'></i> <span>100</span>
							</div>
							<div class="list">
								<i class='bx bxs-comment-detail bx-md'></i> <span>100</span>
							</div>
						</div>
					</div>
				</div>
				<div class="streaming_item">
					<div class="streaming_img">
						<a href="#"><img src="img/thumbnail/thumbnail2.png"></a>

					</div>
					<div class="streaming_info">
						<div class="streaming_desc">자바 강의</div>
						<div class="streaming_info_right">
							<div class="like">
								<i class='bx bx-heart bx-md'></i> <span>100</span>
							</div>
							<div class="list">
								<i class='bx bxs-comment-detail bx-md'></i> <span>100</span>
							</div>
						</div>
					</div>
				</div>
				<div class="streaming_item">
					<div class="streaming_img">
						<a href="#"><img src="img/thumbnail/thumbnail3.png"></a>

					</div>
					<div class="streaming_info">
						<div class="streaming_desc">누자베스</div>
						<div class="streaming_info_right">
							<div class="like">
								<i class='bx bx-heart bx-md'></i> <span>100</span>
							</div>
							<div class="list">
								<i class='bx bxs-comment-detail bx-md'></i> <span>100</span>
							</div>
						</div>
					</div>
				</div>
				<div class="streaming_item">
					<div class="streaming_img">
						<a href="#"><img src="img/thumbnail/thumbnail4.png"></a>

					</div>
					<div class="streaming_info">
						<div class="streaming_desc">키보드 리뷰</div>
						<div class="streaming_info_right">
							<div class="like">
								<i class='bx bx-heart bx-md'></i> <span>100</span>
							</div>
							<div class="list">
								<i class='bx bxs-comment-detail bx-md'></i> <span>100</span>
							</div>
						</div>
					</div>
				</div>
				<div class="streaming_item">
					<div class="streaming_img">
						<a href="#"><img src="img/thumbnail/thumbnail5.png"></a>

					</div>
					<div class="streaming_info">
						<div class="streaming_desc">맥북</div>
						<div class="streaming_info_right">
							<div class="like">
								<i class='bx bx-heart bx-md'></i> <span>100</span>
							</div>
							<div class="list">
								<i class='bx bxs-comment-detail bx-md'></i> <span>100</span>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script src="script.js"></script>
</body>
</html>