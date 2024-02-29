<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav>
        <div class="container">
            <!-- logo -->
            <a href="index.html" class="logo">
                Streamer<span>Sensor</span>
            </a>
            <div class="search-bar">
                <span class="material-icons-sharp"></span>
                <input type="search" placeholder="search">
                <i class='bx bx-search'></i>
            </div>
            <div class="profile-area">
                <div class="theme-btn">
                    <i class='bx bx-wallet-alt active' ></i>
                    <i class='bx bxs-wallet-alt'></i>
                </div>
                <div class="profile">
                    <div class="profile-photo">
                        <img src="">
                    </div>
                    <h5>chuhua</h5>
                    <span></span>
                </div>
                <button id="menu-btn">
                    <i class='bx bx-menu'></i>
                </button>
            </div>
        </div>
    </nav>
    <!-- navbar end -->

    <main>
        <aside>
            <button id="close-btn">
                <i class='bx bx-x'></i>
            </button>
            <div class="sidebar">
            	마이페이지
                <a href="#" class="active">
                    <i class='bx bxs-dashboard' ></i>
                </a>
                <a href="#">
                    <i class='bx bxs-movie-play' ></i>
                    구독
                </a>
                <a href="account.html">
                    <i class='bx bxs-user-detail' ></i>
                    계정
                </a>
                <a href="#">
                    <i class='bx bxs-dashboard' ></i>
                    Mypage
                </a>
                <a href="#">
                    <i class='bx bx-log-out'></i>
                    로그아웃
                </a>
            </div>
            <!-- end sidebar -->
        
        </aside>
        
        <div class="account">
            <h1>계정</h1> <br>
             기본정보 <br/>
             <br/>
            아이디 <br/>
            <input type="text" placeholder="아이디를 입력해 주세요."> <br/>
            이름 <br/>
            <input type="text" placeholder="이름을 입력해 주세요."> <br/>
            <br/>
            <button value="submit" >저장</button> <br/>
            <br/>
            비밀번호 변경 <hr/>
            <h5>비밀번호를 설정하려면 아래의 링크를 눌러주세요.</h5>
            <br/>
            <button>비밀번호 변경</button> <br/>
            <a href="input_data" style="text-decoration-line: none;"></a>
            <br>
            계정 삭제 <br/>
            <br/>
            <h4>한번 삭제한 계정은 복구할 수 없습니다.</h4>
            <br/>
            <br/>
            <button value="submit">계정 삭제</button>
            <a href="account_delete" style="text-decoration-line: none;"></a>
        </div>
    </main>
</body>
</html>