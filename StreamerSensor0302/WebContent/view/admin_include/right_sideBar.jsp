<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 오른쪽 섹션 시작 -->
	<div class="right-section">
		<div class="nav">
			<button class="menu-btn">
				<span class="material-symbols-outlined"> menu </span>
			</button>
			<!-- <div class="dark-mode">
				<span class="material-symbols-outlined active"> light_mode </span> <span
					class="material-symbols-outlined"> dark_mode </span>
			</div> -->

			<div class="profile">
				<div class="info">
					<b></b> <small class="text-muted">Admin</small>
				</div>
				<div class="profile-photo">
					<img src="img/admin/kitang.jpg" />
				</div>
			</div>
		</div>
		<!-- 오른쪽 nav 종료 -->

		<!-- 어드민 기능 시작 -->
		<div class="user-profile">
			<div class="logo">
				<img src="img/admin/KITA2.JPG" />
				<h2>${admin.admin_name }</h2>
				<p>${admin.email}</p>

			</div>
		</div>

		<c:if test="${admin.superAdmin == true}">
			<div class="reminders">
				<div class="header">
					<h2>알림</h2>
					<button>
						<span class="message-count">0</span> <span
							class="material-symbols-outlined"> notifications_none </span>
					</button>
				</div>

				<div class="notification">
					<div class="icon">
						<span class="material-symbols-outlined"> manage_search </span>
					</div>
					<div class="content">
						<div class="info">
							<h3>정보 확인</h3>
							<small class="text_muted"></small>
						</div>
						<span class="material-symbols-outlined"> more_vert </span>
					</div>
				</div>

				<div class="notification deactive">
					<div class="icon">
						<span class="material-symbols-outlined"> edit </span>
					</div>
					<div class="content">
						<div class="info">
							<h3>공지사항 쓰기</h3>
							<small class="text_muted"> 최근 1개 등록함 </small>
						</div>
						<span class="material-symbols-outlined"> more_vert </span>
					</div>
				</div>


				<div class="notification add-reminders">
					<div>
						<span class="material-symbols-outlined"> add </span>
						<h3>새 기능 추가</h3>
					</div>
				</div>
			</div>

		</c:if>
		<!-- 리마인더 종료 -->

	</div>
	<!-- 오른쪽 섹션 종료 -->
</body>
</html>