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
<script>
document.addEventListener("DOMContentLoaded", function() {
    // 기억하기 체크박스 요소
    var rememberCheckbox = document.querySelector("input[type='checkbox']");

    // 아이디를 저장하고 불러오는 함수
    function rememberUserId() {
        // 아이디 입력란 요소
        var userIdInput = document.querySelector("input[name='user_id']");

        // 기억하기 체크박스가 체크되어 있다면
        if (rememberCheckbox.checked) {
            // 아이디를 로컬 스토리지에 저장
            localStorage.setItem("rememberedUserId", userIdInput.value);
        } else {
            // 아이디를 기억하지 않으려면 로컬 스토리지에서 제거
            localStorage.removeItem("rememberedUserId");
        }
    }

    // 페이지가 로드될 때 저장된 아이디를 불러와서 입력란에 채워주는 함수
    function loadRememberedUserId() {
        // 저장된 아이디를 가져옴
        var rememberedUserId = localStorage.getItem("rememberedUserId");
        if (rememberedUserId !== null) {
            // 아이디 입력란 요소
            var userIdInput = document.querySelector("input[name='user_id']");
            // 입력란에 아이디를 채움
            userIdInput.value = rememberedUserId;
            // 기억하기 체크박스를 체크함
            rememberCheckbox.checked = true;
        }
    }

    // 페이지 로드 시 저장된 아이디를 불러옴
    loadRememberedUserId();

    // 체크박스 상태가 변경될 때마다 아이디를 저장하거나 제거함
    rememberCheckbox.addEventListener("change", rememberUserId);
});
</script>
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
				<label><input type="checkbox"> 기억하기</label>
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