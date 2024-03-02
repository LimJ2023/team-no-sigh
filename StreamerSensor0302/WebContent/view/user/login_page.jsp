<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<title>Login</title>
<link rel="stylesheet" href="${root }user/loginPage.css">
</head>
<body>
	<div class="wrapper">
	<c:if test="${fail == true }">
					<div class="alert alert-danger">
						
					</div>
					</c:if>
		<form:form action="${root }user/login_pro" method="post"
			modelAttribute="tempLoginUserBean">
			<h1>Login</h1>
			<div class="input-box">

				<form:input path="user_id" class="form-control"></form:input>
				<form:errors path="user_id" style="color:red" />
				<i class='bx bxs-user'></i>
			</div>
			<div class="input-box">

				<form:password path="user_pw" class="form-control"></form:password>
				<form:errors path="user_pw" style="color:red" />
				<i class='bx bxs-lock-alt'></i>
			</div>

			<div class="remember-forgot">
				<label><input type="checkbox"> 기억하기</label> <a href="#">비밀번호를
					잊어버리셨나요? </a>
			</div>

			<form:button class="btn">Login</form:button>
			<div class="register-link">
				<p>
					간편가입하기 <a href="${root }user/register">회원가입</a>
				</p>
			</div>
		</form:form>
	</div>
</body>
</html>