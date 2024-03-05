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
	<!-- nav -->
	<div class="nav container">
		<!-- logo -->
		<a href="home" class="logo"> Streamer<span>Sensor</span>
		</a>
		<!-- search box (검색)-->
		<div class="search-box">
			<input type="search" name="" id="search-input"
				placeholder="Search streamer"> <i class='bx bx-search'></i>
		</div>
		
		<c:choose>
			<c:when test="${loginUserBean.userLogin == true }">
				<!-- user 사진 제대로 찾아서 넣어야함 (여기는 마이페이지랑 로그인되는 버튼구현)-->
				<a href="${root }user/myPage" class="user"> <img
					src="img/Person_Icon.png" alt="" class="user-img">
				</a>
				
				<a href="${root }user/logout" class="user"> <img
					src="img/Person_Icon.png" alt="" class="user-img">
				</a>
			</c:when>
			<c:otherwise>
				<a href="${root }user/login_page" class="user"> <img
					src="img/Person_Icon.png" alt="" class="user-img">
				</a>
					
				<a href="${root }user/register" class="user"> <img
					src="img/Person_Icon.png" alt="" class="user-img">
				</a>
				
			</c:otherwise>
		</c:choose>

		<!-- navbar (각각 달아줘야함)-->
	</div>
</body>
</html>