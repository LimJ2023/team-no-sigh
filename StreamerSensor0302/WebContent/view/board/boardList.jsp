<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="board/boardList.css">

<link rel="stylesheet" href="swiper-bundle.min.css">
<!--     Fav icon -->
<link rel="shortcut icon" href="../img/fav-icon.png" type="image/x-icon">
<!-- box icons -->
<link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
	rel="stylesheet">
<title>Streamer Sensor</title>
</head>
<body>
	<!-- header -->
	<header>
		<!-- nav container(위쪽 로고부터 검색창, 회원이미지까지) home_include 안의 logo_include로 뺴냄 -->
		<c:import url="/view/home_include/logo_include.jsp" />
		<!-- navbar (왼쪽 사이드바) home_include 안의 left_include로 빼냄 -->
		<c:import url="/view/home_include/left_sideBar.jsp" />
	</header>


	<section class="board_section">
		<div class="board_div">
			<table class="table board-table">
				<thead class="board-table-thead">
					<tr class="tr board-table-thead-tr">
						<th class="th board-table-thead-th">No.</th>
						<th class="th board-table-thead-th">제목</th>
						<th class="th board-table-thead-th">작성자</th>
						<th class="th board-table-thead-th">작성일</th>
						<th class="th board-table-thead-th">조회수</th>
					</tr>
				</thead>


				<tbody class="board-table-tbody">
					<c:forEach var="obj" items="${board}">
						<tr class="tr board-table-tbody-tr">
							<td class="board-table-tbody-td td-no">${obj.board_idx}</td>
							<td class="board-table-tbody-td td-title">
								<a href="${root}board/boardView?board_idx=${board_idx}">${obj.title}</a>
							</td>
							<td class="board-table-tbody-td td-author">${obj.user_id}</td>
							<td class="board-table-tbody-td td-date">${obj.board_date}</td>
							<td class="board-table-tbody-td td-clicks">${obj.view_count}</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>

		</div>


		<div class="board_pageControl">
			<div class="board_search">
				<select name="board-search-select" class="board-search-select">
					<option value="제목" selected>제목</option>
					<option value="작성자">작성자</option>
				</select> <input type="text" class="board-search-input" placeholder="검색하기">
				<button type="button" class="board-search-submit">search</button>
			</div>


			<div class="board-listNum">
				<a href="#" class="pageControl pageControl-left">&lt;</a> <a
					href="#" class="pageControl pageControl_anchorNum">1</a> <a
					href="#" class="pageControl pageControl_anchorNum">2</a> <a
					href="#" class="pageControl pageControl-right">&gt;</a>
			</div>

			<div class="board_write">
				<form action="${root }board/boardWrite" method="post">
					<button type="submit" class="board-write-button">글쓰기</button>
				</form>
			</div>
		</div>

	</section>


	<c:import url="/view/home_include/footer.jsp" />

</body>
</html>