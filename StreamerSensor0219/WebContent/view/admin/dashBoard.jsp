<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
	rel="stylesheet" />
<link rel="stylesheet" href="admin/dashBoard_style.css" />
<title>관리자 페이지 1</title>
</head>
<body>
	<div class="container">
		<aside>
			<div class="toggle">
				<div class="logo">
					<h2>관리자</h2>
				</div>
				<div class="close" id="close-btn">
					<span class="material-symbols-outlined"> close </span>
				</div>
			</div>
			<!-- 왼쪽 사이드바 admin_include 안의 left_sideBar로 빼냄 -->
			<c:import url="/view/admin_include/left_sideBar.jsp" />
		</aside>

		<!-- 메인 컨텐츠 -->
		<main>
			<h1>상세 지표</h1>
			<!-- 분석 -->
			<div class="analyse">
				<div class="sales">
					<div class="status">
						<div class="info">
							<h3>총 매출</h3>
							<h1>${info.total_revenue}</h1>
						</div>
						<div class="progress">
							<svg>
                  <circle cx="38" cy="38" r="36"></circle>
                </svg>
							<div class="percentage">
								<p>${info.increase_revenue }%</p>
							</div>
						</div>
					</div>
				</div>
				<div class="visits">
					<div class="status">
						<div class="info">
							<h3>사이트 방문수</h3>
							<h1>${info.visit_count}</h1>
						</div>
						<div class="progress">
							<svg>
                  <circle cx="38" cy="38" r="36"></circle>
                </svg>
							<div class="percentage">
								<p>${info.increase_visit }%</p>
							</div>
						</div>
					</div>
				</div>
				<div class="highlight">
					<div class="info">
						<h3>최근 평가된 컨텐츠</h3>
						<h3>평점 : ${review.review_rating }점</h3>
						<h3>제목 : ${review.streaming_desc }</h3>
					</div>
					<div class="content">
						<img src="img/thumbnail/${review.img_url}.png">
					</div>
				</div>
				<!-- <div class="searches">
            <div class="status">
              <div class="info">
                <h3>사이트 검색량</h3>
                <h1>14,147</h1>
              </div>
              <div class="progress">
                <svg>
                  <circle cx="38" cy="38" r="36"></circle>
                </svg>
                <div class="percentage">
                  <p>+21%</p>
                </div>
              </div>
            </div>
          </div> -->
			</div>
			<!-- 분석파트 끝 -->

			<!-- 새 유저 시작 -->
			<div class="new-users">
				<h2>신규 회원</h2>
				<div class="user-list">
					<div class="user">
						<img src="img/admin/profile1.png" />
						<h2>${user.user_name}</h2>
						<p>${user.user_age}</p>
					</div>
					<div class="user">
						<img src="img/admin/profile2.png" />
						<h2>${user.user_name}</h2>
						<p>${user.user_age}</p>
					</div>
					<div class="user">
						<img src="img/admin/profile3.png" />
						<h2>${users.user_name}</h2>
						<p>${users.user_age}</p>
					</div>
					<div class="user">
						<img src="img/admin/profile4.png" />
						<h2>${users.user_name}</h2>
						<p>${users.user_age}</p>
					</div>
				</div>
			</div>
			<!-- 새 유저 끝 -->

			<!-- 최근 주문 시작 -->
			<div class="recent-orders">
				<h2>최근 구독</h2>
				<table>
					<thead>
						<tr>
							<th>구독 종류</th>
							<th>고유 번호</th>
							<th>결제 정보</th>
							<th>상태</th>
							<th></th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
				<a href="#">모두 보기</a>
			</div>
			<!-- 최근 주문 끝 -->
		</main>
		<!-- 메인 종료 -->

		<!-- 오른쪽 사이드바 admin_include 안의 right_sideBar로 빼냄 -->
		<c:import url="/view/admin_include/right_sideBar.jsp" />

	</div>
	<!-- 컨테이너 종료 -->
	<!-- <script src="https://apis.google.com/js/api.js"></script>
	<script src="admin/youtube_api.js"></script> -->
	<script src="admin/order.js"></script>
	<script src="admin/admin.js"></script>
</body>
</html>