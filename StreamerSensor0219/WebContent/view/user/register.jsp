<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<title>Login</title>
<link rel="stylesheet" href="${root }user/loginPage.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<script>

//사용자가 중복 확인 버튼 클릭했을 때
function checkUserIdExist() {
	var user_id = $("#user_id").val()
	if(user_id.length == 0){
		alert('아이디를 입력해주세요.')
		return
	}
	$.ajax({
		url : '${root}user/checkUserIdExist/' + user_id,
		type : 'get',
		dataType : 'text',
		success : function(result){
			if(result.trim() == 'true'){
				alert('사용할 수 있는 아이디 입니다')
				$("#userIdExist").val('true')
			}else{
				alert('사용할 수 없는 아이디 입니다')
				$("#userIdExist").val('false')
			}
		}
	})
}
//사용자 아이디란에 입력하면 무조건 false
function resetUserIdExist(){
	$("#userIdExist").val('false')
}

</script>
<body>
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="wrapper">
						<form:form action="${root }user/join_pro" method="post"
							modelAttribute="joinUserBean">
							<form:hidden path="userIdExist" />
							<!-- "유효성 검사 여부 보내기" -->
							<!-- 사용자에게는 안보이게 하기 위해 hidden(사용자는 백에서 어떻게 돌아가는지 알 필요x) -->
							<div class="input-box">

								<form:input path="user_name" class='form-control' placeholder="이름을 입력해 주세요"/>
								<form:errors path="user_name" style='color:red' />
							</div>
							<div class="form-group">
								
								<div class="input-box">
								<form:label path="user_id"></form:label>
									<form:input path="user_id" id="name" class='form-control'
										onkeypress="resetUserIdExist()" placeholder="아이디를 입력해 주세요"/>
									<!-- 사용자 입력시 호출 -->
									<div class="input-group-append">
										<button type="button" onclick="checkUserIdExist()">중복확인</button>
										<!-- 누를시 호출(메서드) -->
									</div>
								</div>
								<form:errors path="user_id" style='color:red' />
							</div>

							<div class="input-box">
								<form:label path="user_pw"></form:label>
								<form:password path="user_pw" class='form-control' placeholder="비밀번호를 입력해 주세요"/>
								<form:errors path='user_pw' style='color:red' />
							</div>

							<div class="input-box">
								<form:label path="user_pw2"></form:label>
								<form:password path="user_pw2" class='form-control' placeholder="비밀번호를 다시 입력해 주세요"/>
								<form:errors path='user_pw2' style='color:red' />
							</div>

							<div class="input-box">
								<div class="text-right">
									<form:button class="btn btn-primary">회원가입</form:button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
</body>
</html>