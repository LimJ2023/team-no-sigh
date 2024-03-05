<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value='${pageContext.request.contextPath}/' />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="navbar">
		<a href="${root }home" class="nav-link nav-active"> <%-- 		<a href="home" class="nav-link nav-active"> --%>
			<i class='bx bx-home'></i> <span class="nav-link-title">home</span>
		</a> 
		<a href="${root }trend" class="nav-link"> <i class='bx bxs-hot'></i>
			<span class="nav-link-title">trending</span>
		</a> 
		<a href="${root }leaderBoard" class="nav-link"> <i
			class='bx bx-bar-chart-alt-2'></i> <span class="nav-link-title">leaderBoard</span>
		</a>
		<a href="${root }board" class="nav-link">
			<i class='bx bx-message-detail'></i> <span class="nav-link-title">community</span>
		</a>
		<!--  <a href="./noticeBoardPage/noticeBoard.html" class="nav-link">
                <i class='bx bx-message-detail'></i>
                <span class="nav-link-title">community</span>
            </a> -->
		<a href="#home" class="nav-link"> <i class='bx bx-news'></i> <span
			class="nav-link-title">news</span>
		</a>
	</div>
</body>
</html>