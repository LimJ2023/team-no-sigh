<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
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
		alert('아이디를 입력해주세요')
		return
		//입력 없이 중복확인 누르면 아이디 입력하라고 경고하는 거
	}
	$.ajax({
		url : '${root}user/checkUserIdExist/' + user_id,
		type : 'get',
		dataType : 'text',
			//문자열로 받아올거다(내가 받고자 예상되는 형식 지정)
		success : function(result){
			if(result.trim() == 'true'){
					//띄어쓰기 등 공백처리를??해준다 -> 공백을 제거해주는듯
				alert('사용할 수 있는 아이디 입니다')
				$("#userIdExist").val('true')
			}else{
				alert('사용할 수 없는 아이디 입니다')
				$("#userIdExist").val('false')
			}
		}
	})
}//checkUserIdExist


//사용자 아이디란에 입력하면 무조건 false(초기화)
function resetUserIdExist(){
	//초기화 하려고 한다
	
	$("#userIdExist").val('false')
	
}//resetUserIdExist

</script>


<body>


	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<form:form action="${root }login/join_pro" method="post"
							modelAttribute="joinUserBean">
							<form:hidden path="userIdExist"/>
							<!-- "유효성 검사 여부 보내기" -->
					<!-- 사용자에게는 안보이게 하기 위해 hidden(사용자는 백에서 어떻게 돌아가는지 알 필요x) -->
							<div class="form-group">
								<form:label path="user_name">이름</form:label>
								<form:input path="user_name" class='form-control' />
								<form:errors path="user_name" style='color:red' />
							</div>
							<div class="form-group">
								<form:label path="user_id">아이디</form:label>
								<div class="input-group">
									<form:input path="user_id" class='form-control' onkeypress="resetUserIdExist()"/>
																					<!-- 사용자 입력시 호출 -->
									<div class="input-group-append">
										<button type="button" class="btn btn-primary" onclick="checkUserIdExist()">중복확인</button>
																					<!-- 누를시 호출(메서드) -->
									</div>
								</div>
								<form:errors path="user_id" style='color:red' />
							</div>

							<div class="form-group">
								<form:label path="user_pw">비밀번호</form:label>
								<form:password path="user_pw" class='form-control' />
								<form:errors path='user_pw' style='color:red' />
							</div>

							<div class="form-group">
								<form:label path="user_pw2">비밀번호 확인</form:label>
								<form:password path="user_pw2" class='form-control' />
								<form:errors path='user_pw2' style='color:red' />
							</div>

							<div class="form-group">
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







