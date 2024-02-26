<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<!-- logo -->
		<a href="index.html" class="logo"> Streamer<span>Sensor</span>
		</a> <br /> <br />
		<li>비밀번호를 잊으셨나요? <br /></li> <br />
		<li>아이디를 입력하면 비밀번호를 <br /> 재설정 할 수 있는 링크를 보내드립니다. <br /></li> <br>
		<form:form action='input_pro' modelAttribute="dataBean1" method='post'>
			<form:input type='text' path='data1' />
			<br />
			<form:errors path='data1' />
			<br />
		</form:form>
		<button>비밀번호 재설정</button>
		<br /> <br /> <a href="">로그인 페이지로 이동</a>
	</div>

</body>
</html>




