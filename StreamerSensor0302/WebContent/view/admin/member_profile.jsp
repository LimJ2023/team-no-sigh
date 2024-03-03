<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<div class="memberProfile">
				<label for="user_id">아이디:</label> <input type="text" id="user_id"
					name="user_id" class="form-control" value="${users.user_id }"
					disabled="disabled" />
			</div>
			<div class="memberProfile">
				<label for="user_name">이름:</label>
				<input type="text" id="user_name"
					name="user_name" class="form-control" value="${users.user_name }"
					disabled="disabled" />
			</div>
			<div class="memberProfile">
				<label for="user_gender">성별:</label>
				<input type="text" id="user_gender"
					name="user_gender" class="form-control" value="${users.user_gender }"
					disabled="disabled" />
			</div>
			<div class="memberProfile">
				<label for="user_age">나이:</label>
				<input type="text" id="user_age"
					name="user_age" class="form-control" value="${users.user_age }"
					disabled="disabled" />
			</div>
			<div class="memberProfile">
				<label for="user_nation">아이디:</label>
				<input type="text" id="user_id"
					name="user_nation" class="form-control" value="${users.user_nation }"
					disabled="disabled" />
			</div>
			<div class="memberProfile">
				<label for="user_subscription">구독 여부:</label>
				<input type="text" id="user_subscrip"
					name="user_subscription" class="form-control" value="${users.subscription }"
					disabled="disabled" />
			</div>
		</div>
		
		<div class="button">
			<a href="${root }modify?user_idx=${users.user_idx}">수정하기</a>
			<br>
			<a href="${root }member_delete?user_idx=${user_idx }">삭제하기</a>
			<br> <a href="${root }members">전체 회원 보기</a>
		</div>
	</div>
</body>
</html>