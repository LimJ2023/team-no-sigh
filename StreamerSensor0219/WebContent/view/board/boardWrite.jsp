<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/> 
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
                <form action="#" class="board-write-form">
                    <table class="table board-write-table">
                       
                        <tr class="board-write-form-info">
                            <td class="write-form-author">작성자</td>
                            <td class="write-form-author-input "><input type="text" class="write-form-input"></td>
                            <td class="write-form-password1">비밀번호</td>
                            <td class="write-form-password1-input"><input type="password" class="write-form-input"></td>
                        </tr>

                        <tr class="board-write-form-title">
                            <td class="write-form-title-info">제목</td>
                            <td class="write-form-title" colspan="3">
                                <input type="text" class="write-form-title-input">
                            </td>
                        </tr>

                        <tr class="board-write-form-content">
                            <td class="write-form-content" colspan="4">
                                <textarea name="board-write-content" id="board-write-content" cols="160" rows="25" placeholder="내용을 입력하세요"></textarea>
                            </td>
                        </tr>

                        <tr class="board-write-form-end">
                            <td class="board-write-form-end-td" colspan="4">
                            	<a href="${root }board" class="write-button-toList write-button">목록으로</a>
                                <button type="submit" class="write-button-submit write-button">작성</button>
                            </td>
                        </tr>
                     </table>
                </form>
            </div>
        </section>
</body>
</html>