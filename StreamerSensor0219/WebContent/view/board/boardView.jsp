<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Streamer Sensor</title>

<link rel="stylesheet" href="boardViewStyle.css">
<link rel="stylesheet" href="swiper-bundle.min.css">
<!--     Fav icon -->
<link rel="shortcut icon" href="../img/fav-icon.png" type="image/x-icon">
<!-- box icons -->
<link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
	rel="stylesheet">

<title>Streamer Sensor</title>
</head>
<body>
	<p>test 03</p>
	<!-- header -->
	<header>
		<!-- nav container(위쪽 로고부터 검색창, 회원이미지까지) home_include 안의 logo_include로 뺴냄 -->
		<c:import url="/view/home_include/logo_include.jsp" />
		<!-- navbar (왼쪽 사이드바) home_include 안의 left_include로 빼냄 -->
		<c:import url="/view/home_include/left_sideBar.jsp" />
	</header>


	<section class="board-view-section">
		<div class="board-view-div">
			<table class="table board-view-table">
				<tr class="table board-view-table-info board-view-table-info-tr">
					<td class="board-view-table-info info-no">글번호</td>
					<td class="board-view-table-info info-no">1</td>
					<td class="board-view-table-info info-author info-author-1">작성자</td>
					<td class="board-view-table-info info-author info-author-2">이이름</td>

					<td class="board-view-table-info info-date">2024-02-15</td>
					<td class="board-view-table-info info-clicks">조회수</td>
					<td class="board-view-table-info info-clicks">1,752</td>
				</tr>
				<tr class="table board-view-table-content">
					<td class="content-title" colspan="7">이것이 게시글 제목</td>
				</tr>
				<tr class="btable board-view-table-content">
					<td class="content-text" colspan="7">글내용 <br> Lorem Ipsum
						is simply dummy text of the printing and typesetting industry.
						Lorem Ipsum has been the industry's standard dummy text ever since
						the 1500s, when an unknown printer took a galley of type and
						scrambled it to make a type specimen book. It has survived not
						only five centuries, but also the leap into electronic
						typesetting, remaining essentially unchanged. It was popularised
						in the 1960s with the release of Letraset sheets containing Lorem
						Ipsum passages, and more recently with desktop publishing software
						like Aldus PageMaker including versions of Lorem Ipsum. Contrary
						to popular belief, Lorem Ipsum is not simply random text. It has
						roots in a piece of classical Latin literature from 45 BC, making
						it over 2000 years old. Richard McClintock, a Latin professor at
						Hampden-Sydney College in Virginia, looked up one of the more
						obscure Latin words, consectetur, from a Lorem Ipsum passage, and
						going through the cites of the word in classical literature,
						discovered the undoubtable source. Lorem Ipsum comes from sections
						1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The
						Extremes of Good and Evil) by Cicero, written in 45 BC. This book
						is a treatise on the theory of ethics, very popular during the
						Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit
						amet..", comes from a line in section 1.10.32.
					</td>
				</tr>
			</table>
		</div>
	</section>

	<section class="board-bottom-menu-section">
		<div class="board-bottom-menu">
			<div class="board-bottom-menu-div1 board-menu-button">
				<a href="${root}board">목록으로</a>
				<!-- 임시로 a링크로 바꿈 -->
				<!-- <button type="button" class="board-menu-button button-list" onclick="location.href=board/boardList">목록으로</button> -->

			</div>
			<div class="board-bottom-menu-div2">

				<a href="${root}board/boardModify" class="board-menu-button">수정하기</a>
				<!-- 임시로 a링크로 바꿈 -->
				<a href="${root}board/boardDelete" class="board-menu-button">삭제하기</a>
				<!-- 임시로 a링크로 바꿈 -->
				<!-- <button type="button" class="board-menu-button button-edit" onclick="location.href=board/boardModify">수정하기</button>
                        <button type="button" class="board-menu-button button-delete" onclick="location.href=board/boardDelete">삭제하기</button> -->
			</div>
		</div>
	</section>

	<c:import url="/view/home_include/footer.jsp" />

</body>
</html>