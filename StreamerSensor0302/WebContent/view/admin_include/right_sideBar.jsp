<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<b>요한</b> <small class="text-muted">Admin</small>
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

		<div class="reminders">
			<div class="header">
				<h2>알림</h2>
				<button>
					<span class="message-count">30</span> <span
						class="material-symbols-outlined"> notifications_none </span>
				</button>
			</div>

			<div class="notification">
				<div class="icon">
					<span class="material-symbols-outlined"> volume_up </span>
				</div>
				<div class="content">
					<div class="info">
						<h3>호출</h3>
						<small class="text_muted"> 새 알림 3 건 </small>
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

			<div class="notification deactive" id="addStreamer" onclick="loadClient()">
				<div class="icon">
					<span class="material-symbols-outlined"> edit </span>
				</div>
				<div class="content" >
					<div class="info">
						<h3>스트리머 추가하기</h3>
						<small class="text_muted"> 최근 1개 가져옴 </small>
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
		<!-- 리마인더 종료 -->
	</div>
	<!-- 오른쪽 섹션 종료 -->
</body>
</html>