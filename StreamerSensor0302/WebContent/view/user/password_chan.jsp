<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>MyPage</title>
    <link rel="stylesheet" href="${root }user/account.css">
    <!-- 아이콘 -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--폰트  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Monoton&family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <!-- box icons -->
    <link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet">
    
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js" integrity="sha512-GMGzUEevhWh8Tc/njS0bDpwgxdCJLQBWG3Z2Ct+JGOpVnEmjvNx6ts4v6A2XJf1HOrtOsfhv3hBKpK9kE5z8AQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="myPage.js"></script>
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
                <a href="${root }user/myPage" class="active">
                    <i class='bx bxs-dashboard' ></i>
                    <h4>마이페이지</h4>
                </a>
                <a href="${root }user/subscribe">
                    <i class='bx bxs-movie-play' ></i>
                    <h4>구독</h4>
                </a>
                <a href="${root }user/password_chan">
                    <i class='bx bxs-user-detail' ></i>
                    <h4>계정</h4>
                </a>
                <a href="#">
                    <i class='bx bxs-dashboard' ></i>
                    <h4>Mypage</h4>
                </a>
                <a href="#">
                    <i class='bx bx-log-out'></i>
                    <h4>로그아웃</h4>
                </a>
            </div>
            <!-- end sidebar -->
            <div class="updates">
                <i class='bx bx-refresh'></i>
                <h4>Update Available</h4>
                <small>Security Updates</small>
                <small>General Updates</small>
                <a href="#">Update Now</a>
            </div>
        </aside>
        <!-- end aside -->
        
        <form:form action="${root }user/modify_pro" method="post"
			modelAttribute="modifyUserBean">
			<div class="account">
				<h1>계정</h1>
				<br> 기본정보 <br />
				<form:label path="upload_file">첨부이미지</form:label>
				<form:input type="file" path="upload_file" class="form-control"
						accept="image/*" />
				 <br /> 아이디 <br />
				<form:input path="user_id" placeholder="아이디를 입력해 주세요."
					readonly="true" />
				<br /> 이름 <br />
				<form:input path="user_name" placeholder="이름을 입력해 주세요."
					readonly="true" />
				<br /> 성별 <br />
				<form:input path="user_gender" placeholder="성별을 입력해 주세요." />
				<br /> 나이 <br />
				<form:input path="user_age" placeholder="나이을 입력해 주세요." />
				<br /> 국적 <br />
				<form:input path="user_nation" placeholder="국적을 입력해 주세요." />
				<br /> <br />
				<form:password path="user_pw" placeholder="비밀번호를 입력해 주세요."/>
				<br /> <br />
				<form:password path="user_pw2" placeholder="비밀번호를 다시 입력해 주세요."/>
				<form:button value="submit">저장</form:button>
				
				<br /> <br> 계정 삭제 <br /> <br />
				<div style="color: red;">
					<h4>한번 삭제한 계정은 복구할 수 없습니다.</h4>
				</div>
				<br />
				<li>즐겨찾기 목록 등 개인 편의를 위해 저장한 모든 데이터가 영구적으로 삭제됩니다.</li>
				<li>이용중인 모든 유료서비스가 해지되며 결제한 금액은 환불되지 않습니다.</li> <br />
				<button value="submit">
					<a href="account_delete.html" style="text-decoration-line: none;">계정
						삭제</a>
				</button>
			</div>
		</form:form>
        
        <!-- end right -->
    </main>
    <!-- end of aside=============== -->

    
</body>

</html>