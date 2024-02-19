<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
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
    <c:import url="/view/home_include/logo_include.jsp"/>
    <!-- navbar (왼쪽 사이드바) home_include 안의 left_include로 빼냄 -->
    <c:import url="/view/home_include/left_sideBar.jsp"/>
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
					<tr class="tr board-table-tbody-tr">
						<td class="board-table-tbody-td td-no">5</td>
						<td class="board-table-tbody-td td-title"><a href="board/boardView">제목샘플입니다5</a></td>
						<td class="board-table-tbody-td td-author">이이름5</td>
						<td class="board-table-tbody-td td-date">2024-02-15</td>
						<td class="board-table-tbody-td td-clicks">조회5</td>
					</tr>
					<tr class="tr board-table-tbody-tr">
						<td class="board-table-tbody-td td-no">4</td>
						<td class="board-table-tbody-td td-title">제목샘플입니다4</td>
						<td class="board-table-tbody-td td-author">이이름4</td>
						<td class="board-table-tbody-td td-date">2024-02-15</td>
						<td class="board-table-tbody-td td-clicks">조회4</td>
					</tr>
					<tr class="tr board-table-tbody-tr">
						<td class="board-table-tbody-td td-no">3</td>
						<td class="board-table-tbody-td td-title">제목샘플입니다3</td>
						<td class="board-table-tbody-td td-author">이이름3</td>
						<td class="board-table-tbody-td td-date">2024-02-15</td>
						<td class="board-table-tbody-td td-clicks">조회3</td>
					</tr>
					<tr class="tr board-table-tbody-tr">
						<td class="board-table-tbody-td td-no">2</td>
						<td class="board-table-tbody-td td-title">제목2</td>
						<td class="board-table-tbody-td td-author">작성자2</td>
						<td class="board-table-tbody-td td-date">작성일2</td>
						<td class="board-table-tbody-td td-clicks">조회2</td>
					</tr>
					<tr class="tr board-table-tbody-tr">
						<td class="board-table-tbody-td td-no">1</td>
						<td class="board-table-tbody-td td-title">제목샘플1</td>
						<td class="board-table-tbody-td td-author">김이름1</td>
						<td class="board-table-tbody-td td-date">2024-02-14</td>
						<td class="board-table-tbody-td td-clicks">조회1</td>
					</tr>
				</tbody>

			</table>

		</div>

		
                <div class="board_pageControl">
                    <div class="board_search">
                        <select name="board-search-select" class="board-search-select">
                            <option value="제목" selected>제목</option>
                            <option value="작성자">작성자</option>
                        </select>
                        <input type="text" class="board-search-input" placeholder="검색하기">
                        <button type="button" class="board-search-submit">search</button>
                    </div>

                    
                    <div class="board-listNum">
                        <a href="#" class="pageControl pageControl-left">&lt;</a>
                    <a href="#" class="pageControl pageControl_anchorNum">1</a>
                    <a href="#" class="pageControl pageControl_anchorNum">2</a>
                    <a href="#" class="pageControl pageControl-right">&gt;</a>
                    </div>
                    
                    <div class="board_write">
                    	<a href="board/boardWrite" class="board-write-button">글쓰기</a>
                        <button class="board-write-button">글쓰기</button>
                    </div>
                </div>

	</section>


</body>
</html>