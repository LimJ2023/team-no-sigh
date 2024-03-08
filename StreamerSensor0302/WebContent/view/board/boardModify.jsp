<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="boardWriteStyle.css">


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


	<section class="board-write-section">
            <div class="board-write-div">
                <form:form action="${root }board/boardModifySuccess?board_idx=${board_idx}" class="board-write-form" modelAttribute="modifyBoardBean">
                    <table class="table board-write-table">
                       
                        <tr class="board-write-form-info">
                            <td class="write-form-author">작성자</td>
                            <td class="write-form-author-input ">
                            	<form:input type="text" class="write-form-input" placeholder="${tempBoardlist.user_id}" path="user_id" readonly="true"/>
                            </td>
                            <td class="write-form-password1">카테고리</td>
                            <td class="write-form-password1-input">
                            	<form:select class="write-form-input" path="categorys" style="background-color : #2c2c2c">
									<form:option value="영화" />
									<form:option value="게임" />
									<form:option value="음악" />
									<form:option value="리뷰" />
									<form:option value="주식" />
									<form:option value="음식" />
									<form:option value="수다" />
									<form:option value="스포츠" />
								</form:select>
                            </td>
                        </tr>

                        <tr class="board-write-form-title">
                            <td class="write-form-title-info">제목</td>
                            <td class="write-form-title" colspan="3">
                                <form:input type="text" class="write-form-title-input" placeholder="${tempBoardlist.title}" path="title" />
                            </td>
                        </tr>

                        <tr class="board-write-form-content">
                            <td class="write-form-content" colspan="4">
                                <form:textarea name="board-write-content" id="board-write-content" cols="160" rows="25" placeholder="${tempBoardlist.info}" path="info" />
                            </td>
                        </tr>

                        <tr class="board-write-form-end">
                            <td class="board-write-form-end-td" colspan="4">
                            	<a href="${root }board" class="write-button-toList write-button">목록으로</a>
                                <button type="submit" class="write-button-submit write-button">수정</button>
                            </td>
                        </tr>
                     </table>
                </form:form>
            </div>
        </section>
        
        <c:import url="/view/home_include/footer.jsp"/>
        
</body>
</html>