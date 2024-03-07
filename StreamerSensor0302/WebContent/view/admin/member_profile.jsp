<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="admin/member_profile_style.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>회원 프로필 관리 페이지</title>
</head>
<body>
	<div class="container">
		<div class="profile-box">
			<c:if test="${users.user_image != null }">
				<div class="memberProfile">
					<img src="${root }upload/${users.user_image}" width="100%">
				</div>
			</c:if>
			<div class="memberProfile">
				<label for="user_id">아이디: </label> <input type="text" id="user_id"
					name="user_id" class="form-control" value="${users.user_id }"
					disabled="disabled" />
			</div>
			<div class="memberProfile">
				<label for="user_name">이름: </label> <input type="text"
					id="user_name" name="user_name" class="form-control"
					value="${users.user_name }" disabled="disabled" />
			</div>
			<div class="memberProfile">
				<label for="user_gender">성별: </label> <input type="text"
					id="user_gender" name="user_gender" class="form-control"
					value="${users.user_gender }" disabled="disabled" />
			</div>
			<div class="memberProfile">
				<label for="user_age">나이: </label> <input type="text" id="user_age"
					name="user_age" class="form-control" value="${users.user_age }"
					disabled="disabled" />
			</div>
			<div class="memberProfile">
				<label for="user_nation">아이디: </label> <input type="text"
					id="user_id" name="user_nation" class="form-control"
					value="${users.user_nation }" disabled="disabled" />
			</div>
			<div class="memberProfile">
				<label for="user_subscription">구독 여부: </label> <input type="text"
					id="user_subscrip" name="user_subscription" class="form-control"
					value="${users.subscription }" disabled="disabled" />
			</div>
		</div>

		<div class="button">
			<a href="${root }member_modify?user_idx=${users.user_idx}">수정하기</a> <br>
			<a href="${root }member_delete?user_idx=${users.user_idx }">삭제하기</a>
			<br> <a href="${root }members">전체 회원 보기</a>
		</div>
	</div>

	<div class="board-info">
		<table class="reading-user-board">
			<thead class="board-table-thead">
				<tr class="tr board-table-thead-tr">
					<th class="th board-table-thead-th">No.</th>
					<th class="th board-table-thead-th">작성자</th>
					<th class="th board-table-thead-th">제목</th>
					<th class="th board-table-thead-th">내용</th>
					<th class="th board-table-thead-th">작성일</th>
				</tr>
			</thead>


			<tbody class="board-table-tbody">
				<c:forEach var="obj" items="${board}">
					<tr class="tr board-table-tbody-tr">
						<td class="board-table-tbody-td td-no">${obj.board_idx}</td>
						<td class="board-table-tbody-td td-author">${obj.user_id}</td>
						<td class="board-table-tbody-td td-title">${obj.title }</td>
						<td class="board-table-tbody-td td-title">${obj.info }</td>
						<td class="board-table-tbody-td td-date">${obj.board_date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>