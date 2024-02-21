<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Login</title>
    <link rel="stylesheet" href="${root }user/loginPage.css">
</head>
<body>
<div class="wrapper">
        <div class="title"><h1 style="font-size: 21px;">회원가입</h1></div>
        <div class="input-box">
            <input id="email" type="text" placeholder="아이디를 입력해 주세요.">
            <div id="emailError" class="error"></div>
        </div>
        <div class="input-box">
            <input id="name"  type="text" placeholder="이름을 입력해 주세요.">
            <div id="nameError" class="error"></div>
        </div>
        <div class="input-box">
            <input id="password" type="password" placeholder="비밀번호를 입력해 주세요.">
            <div id="passwordError" class="error"></div>
        </div>
        <div class="input-box">
            <input id="passwordCheck" type="password" placeholder="비밀번호를 다시 입력해 주세요.">
            <div id="passwordCheckError" class="error" onclick="signUpCheck()"></div>
        </div>
        <div class="gender">
            <input id="gender_man" type="radio" name="gender">남성  
            <input id="gender_woman" type="radio" name="gender">여성
            <div id="genderError" class="error"></div>
        </div>
        <div class="age">
            <input id="age" type="text" placeholder="나이를 입력해 주세요.">
            <div id="ageError" class="error"></div>
        </div>

        
        <div class="">
           national
           <input id="national" type="text" placeholder="국적을 입력해 주세요.">
            <div id="national" class="error"></div>
        </div>
        
        <div class="line">
            <hr>
        </div>
        <div class="signUp">
            <button id="signUpButton" disabled >가입하기</button>
        </div>
    </div>
</body>
</html>