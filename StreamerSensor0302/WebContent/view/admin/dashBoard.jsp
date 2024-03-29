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
	<script src="admin/admin.js"></script>
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
							<h1>누적 : ${info.total_revenue} 원</h1>
							<h1>오늘 : ${info.totalSales } 원</h1>
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
							<h1>누적 : ${info.visit_count} 명</h1>
							<h1>오늘 : ${info.dayVisit } 명</h1>
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
				<c:choose>
					<c:when test="${rating == null }">
						<div class="info">
							<h2>최근 평가가 없습니다.</h2>
						</div>
					</c:when>
					<c:otherwise>
					<div class="info">
						<h3>최근 평가된 스트리머</h3>
						<h3>평점 : ${rating.streamer_rating }점</h3>
						<h3>내용 : ${rating.rating_comment }</h3>
						
					</div>
					<div class="content">
						<img src="img/streamer_profile/${rating.streamer_image}.png">
					</div>
					<script>
					function showConfirmation() {
			            var result = confirm("댓글을 삭제하시겠습니까?");
			            if (result) {
			                // 사용자가 "Yes"를 선택한 경우에 수행할 작업
			                location.href = "${root}admin/deleteComment";
			            } else {
			                
			            }
			        }
					</script>
					<span class="material-symbols-outlined" onclick="showConfirmation()">delete
					</span>
					</c:otherwise>
				</c:choose>
					
				</div>
			</div>
			<!-- 분석파트 끝 -->

			<!-- 새 유저 시작 -->
			<div class="new-users">
				<h2>신규 회원</h2>
				<div class="user-list">
					<c:forEach var="item" items="${newUsers }">
						<div class="user">
							<img src="img/user_profile/${item.user_image}" />
							<h2>${item.user_name}</h2>
							<p>${item.user_id}</p>
						</div>
					</c:forEach>

				</div>
			</div>
			<!-- 새 유저 끝 -->

			<!-- 최근 주문 시작 -->

			<div class="recent-orders">
				<h2>최근 구독</h2>
				<table>
					<thead>
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>국적</th>
							<th>구독상태</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${subUsers }">
							<tr>
								<td>${user.user_id }</td>
								<td>${user.user_name }</td>
								<td>${user.user_nation }</td>
								<td>${user.subscription }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="admin?adminId=5">supersupermember</a>
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
	<script src="https://apis.google.com/js/api.js"></script>
	<script src="jquery-3.7.1.min.js"></script>
	
</body>
</html>