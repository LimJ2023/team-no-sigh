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
			<form:form action="${root }admin/modify_pro" method="post"
				modelAttribute="modifyMemberBean" enctype="multipart/form-data">
				<div class="memberProfile">
					<form:label path="upload_file">첨부이미지</form:label>
					<form:input type="file" path="upload_file" class="form-control"
						accept="image/*" />
				</div>
				<div class="memberProfile">
					<form:label path="user_id">이름</form:label>
					<form:input path="user_id" class="form-control" readonly="true" />
				</div>
				<div class="memberProfile">
					<form:label path="user_name">이름</form:label>
					<form:input path="user_name" class="form-control" />
				</div>
				<div class="memberProfile">
					<form:label path="user_gender">성별</form:label>
					<form:input path="user_gender" class="form-control" />
				</div>
				<div class="memberProfile">
					<form:label path="user_age">나이</form:label>
					<form:input path="user_age" class="form-control" />
				</div>
				<div class="memberProfile">
					<form:label path="user_nation">국적</form:label>
					<form:input path="user_nation" class="form-control" />
				</div>
				<div class="memberProfile">
					<form:label path="subscription">구독여부</form:label>
					<form:input path="subscription" class="form-control" />
				</div>
			</form:form>
		</div>

		<div class="button">
			<form:button>수정완료</form:button>
			<br> <br>
			<a href="${root }member_profile?user_idx=${user_idx}">취소</a>
		</div>
	</div>
</body>
</html>