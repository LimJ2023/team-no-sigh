<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/> 
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
    <c:import url="/view/home_include/logo_include.jsp"/>
    <!-- navbar (왼쪽 사이드바) home_include 안의 left_include로 빼냄 -->
    <c:import url="/view/home_include/left_sideBar.jsp"/>
            </header>


            <section class="board-view-section">
                <div class="board-view-div">
                    <table class="table board-view-table">
                        <tr class="table board-view-table-info board-view-table-info-tr">
                            <td class="board-view-table-info info-no">글번호</td>
                            <td class="board-view-table-info info-no">${data.board_idx }</td>
                            <td class="board-view-table-info info-author info-author-1">작성자</td>
                            <td class="board-view-table-info info-author info-author-2">${data.user_id}</td>
                        	<td class="board-view-table-info info-date">날짜</td>
                            <td class="board-view-table-info info-date">${data.board_date }</td>
                            <td class="board-view-table-info info-clicks">조회수</td>
                            <td class="board-view-table-info info-clicks">${data.view_count }</td>
                        </tr>
                        <tr class="table board-view-table-content">
                            <td class="content-title" colspan="8"><c:out value="${data.title}"/></td>
                        </tr>
                        <tr class="btable board-view-table-content">
                            <td class="content-text" colspan="8">글내용 <br>
                            	<c:out value="${data.info}"/>
                            </td>  
                        </tr>    
                    </table>
                </div>
            </section>

           <section class="board-bottom-menu-section">
                <div class="board-bottom-menu">
                    <div class="board-bottom-menu-div1 board-menu-button">
                    <a href="${root}board">목록으로</a>			<!-- 임시로 a링크로 바꿈 -->
                        <!-- <button type="button" class="board-menu-button button-list" onclick="location.href=board/boardList">목록으로</button> -->
                        
                    </div>
                    <div class="board-bottom-menu-div2">
                    
                    <a href="${root}board/boardModify" class="board-menu-button">수정하기</a>		<!-- 임시로 a링크로 바꿈 -->
                    <a href="${root}board/boardDelete" class="board-menu-button">삭제하기</a>		<!-- 임시로 a링크로 바꿈 -->
                        <!-- <button type="button" class="board-menu-button button-edit" onclick="location.href=board/boardModify">수정하기</button>
                        <button type="button" class="board-menu-button button-delete" onclick="location.href=board/boardDelete">삭제하기</button> -->
                    </div>
                </div>
            </section>

<c:import url="/view/home_include/footer.jsp"/>

</body>
</html>