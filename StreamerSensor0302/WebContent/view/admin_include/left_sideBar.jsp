<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--           사이드바             -->
	<div class="sidebar">
		<a href="${root}admin?adminId=0"> <span class="material-symbols-outlined">empty_dashboard
		</span>
			<h3>대시보드</h3>
		</a> <a href="${root }members"> <span
			class="material-symbols-outlined"> group </span>
			<h3>회원 관리</h3>
		</a> <a href="${root }chart"><span class="material-symbols-outlined">
				insights </span>
			<h3>분석</h3> </a> <a href="${root }home"> <span
			class="material-symbols-outlined">logout </span>
			<h3>로그 아웃</h3>
		</a>
	</div>
	<!-- 사이드바 종료 -->
</body>
</html>