<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
	rel="stylesheet" />
<link rel="stylesheet" href="admin/members_style.css" />
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
			<div class="search">
				<input type="text" placeholder="검색..." id="searchInput" />
				<button type="submit">
					<span class="material-symbols-outlined"> search</span>
				</button>
			</div>
			<ul id="searchedUserList" class="list-users"></ul>
			<div class="select">
				<select name="" id="category" onchange="onchangeSelect()">
					<option value="All">전체 보기</option>
					<option value="y">y</option>
					<option value="n">n</option>
				</select>
			</div>
			<div class="user-profile">
				<c:forEach var="users" items="${users }">
					<a href='${root }member_profile?user_idx=${users.user_idx}'>
						<div class='user'>
							<p class='id'>
								<img src='img/admin/profile4.png' />&nbsp; 아이디: ${users.user_id }
							</p>
							<br /> <br />
							<p class='subscription'>구독 여부: ${users.subscription }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</main>
		<!-- 메인 종료 -->

		<!-- 오른쪽 사이드바 admin_include 안의 right_sideBar로 빼냄 -->
		<c:import url="/view/admin_include/right_sideBar.jsp" />

	</div>
	<!-- 컨테이너 종료 -->
	<script src="admin/order.js"></script>
	<!-- <script src="index.js"></script> -->
	<script src="admin/filter.js"></script>
	<!-- <script src="searchUser.js"></script> -->
</body>

</html>