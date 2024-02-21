<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Login</title>
    <link rel="stylesheet" href="${root }user/loginPage.css">
</head>
<body>
<div class="wrapper">
        <form action="">
            <h1>Login</h1>
            <div class="input-box">
                <input type="text" placeholder="Username" required>
                <i class='bx bxs-user'></i>
            </div>
            <div class="input-box">
                <input type="password" placeholder="password" required>
                <i class='bx bxs-lock-alt' ></i>
            </div>

            <div class="remember-forgot">
                <label><input type="checkbox"> 기억하기</label>
                <a href="#">비밀번호를 잊어버리셨나요? </a>
            </div>

            <button type="submit" class="btn">Login</button>
            <div class="register-link">
                <p>간편가입하기 <a href="${root }user/register">회원가입</a></p>
            </div>
        </form>
    </div>
</body>
</html>