<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="noticeBoard/BoardStyle.css" />
	<!-- link swiper css -->
    <link rel="stylesheet" href="swiper-bundle.min.css">
    <!-- Fav icon -->
    <link rel="shortcut icon" href="../img/fav-icon.png" type="image/x-icon">
    <!-- box icons -->
    <link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./style/carousel.css">
<title>Streamer Sensor</title>
</head>
<link href="./style/BoardStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
    <p>test 03</p>
	<!-- header -->
    <header>
        <!-- nav -->
        <div class="nav container">
            <!-- logo -->
            <a href="../index.html" class="logo">
                Streamer<span>Sensor</span>
            </a>
            <!-- search box (검색)-->
            <div class="search-box">
                <input type="search" name="" id="search-input" placeholder="Search streamer">
                <i class='bx bx-search' ></i>
            </div>
            <!-- user 사진 제대로 찾아서 넣어야함 (여기는 마이페이지랑 로그인되는 버튼구현)-->
            <a href="login/html.html" class="user">
                <img src="../img/Person_Icon.png" alt="" class="user-img">
            </a>
            <!-- navbar (각각 달아줘야함)-->
            <div class="navbar">
                <a href="../index.html" class="nav-link nav-active">
                    <i class='bx bx-home' ></i>
                    <span class="nav-link-title">home</span>
                </a>
                <a href="../trend_page/trendPage.html" class="nav-link">
                    <i class='bx bxs-hot' ></i>
                    <span class="nav-link-title">trending</span>
                </a>
                <a href="../rankPage/rankPage.html" class="nav-link">
                    <i class='bx bx-bar-chart-alt-2'></i>
                    <span class="nav-link-title">leaderBoard</span>
                </a>
                <a href="../noticeBoardPage/noticeBoard.html" class="nav-link">
                    <i class='bx bx-message-detail'></i>
                    <span class="nav-link-title">community</span>
                </a>
                <a href="#home" class="nav-link">
                    <i class='bx bx-news' ></i>
                    <span class="nav-link-title">news</span>
                </a>
                <a href="../Admin_page/dashBoard.html" class="nav-link">
                    <i class='bx bx-wrench'></i>
                    <span class="nav-link-title">관리자페이지 진입 버튼1</span>
                </a>
            </div>
        </div>
    </header>
    
    <section class="noticeBoardArea">
    <div id="write">
		<a href="BoardWriteForm.jsp" style="text-decoration: none">글쓰기</a>
	</div>
        <div class="container">
            <div class=""><a href=""></a></div>
            <div class="BoardList">
                <div class="BoardNumber">번호</div>
                <div class="Boardtitle">제목</div>
                <div class="BoardWriter">작성자</div>
                <div class="BoardDate">작성일</div>
                <div class="BoardCount">조회</div>
            </div>
        </div>
    </section>
    

	
</body>
</html>

