<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="admin/member_profile_style.css" />
<title>회원 프로필 관리 페이지</title>
</head>
<body>
	<div class="container">
		<div class="profile-box">
			<p>
				<img src="img/admin/profile1.png" /> <br> <br> <br>
				<span>아이디: ${userse.user_id }</span> <br> <br> <span>구독 여부: ${users.subscription }</span> <br>
				<br>
			</p>
		</div>
		<div class="button">
			<button type="button" value="수정하기">수정하기</button>
			<br>
			<button type="button" value="삭제하기">삭제하기</button>
			<br> <a href="${root }members">전체 회원 보기</a>
		</div>
	</div>
</body>
</html>