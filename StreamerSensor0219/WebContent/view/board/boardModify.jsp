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
                            <td class="write-form-author-input "><input type="text" class="write-form-input" placeholder="이이름5"></td>
                            <td class="write-form-password1">비밀번호</td>
                            <td class="write-form-password1-input"><input type="password" class="write-form-input" placeholder="**********"></td>
                        </tr>

                        <tr class="board-write-form-title">
                            <td class="write-form-title-info">제목</td>
                            <td class="write-form-title" colspan="3">
                                <input type="text" class="write-form-title-input" placeholder="이것이 게시글 제목">
                            </td>
                        </tr>

                        <tr class="board-write-form-content">
                            <td class="write-form-content" colspan="4">
                                <textarea name="board-write-content" id="board-write-content" cols="160" rows="25" placeholder="글내용
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of"></textarea>
                            </td>
                        </tr>

                        <tr class="board-write-form-end">
                            <td class="board-write-form-end-td" colspan="4">
                            	<a href="${root }board" class="write-button-toList write-button">목록으로</a>
                            	<a href="${root }board/boardView" class="write-button-submit write-button">수정</a>	<!-- 임시 방편 -->
                                <button type="submit" class="write-button-submit write-button">수정</button>
                            </td>
                        </tr>
                     </table>
                </form>
            </div>
        </section>
        
        <c:import url="/view/home_include/footer.jsp"/>
        
</body>
</html>