<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
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

		<main>
			<div class="recent-orders">
				<h2>관리자 정보</h2>
				<table>
					<thead>
						<tr>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이메일</th>
							<th>최근 접속</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="admin" items="${adminList }">
							<tr>
								<td>${admin.admin_name }</td>
								<td>${admin.admin_pw }</td>
								<td>${admin.email }</td>
								<td>${admin.last_login }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- 최근 주문 끝 -->
		</main>
		<!-- 오른쪽 사이드바 admin_include 안의 right_sideBar로 빼냄 -->
		<c:import url="/view/admin_include/right_sideBar.jsp" />

	</div>
	<!-- 컨테이너 종료 -->
	<!-- <script src="https://apis.google.com/js/api.js"></script>
	<script src="admin/youtube_api.js"></script> -->
	<script src="https://apis.google.com/js/api.js"></script>
	<script src="jquery-3.7.1.min.js"></script>
	<script src="admin/admin.js"></script>
</body>
</html>