<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<nav>
		<div class="container">
			<!-- logo -->
			<a href="index.html" class="logo"> Streamer<span>Sensor</span>
			</a>
			<div class="search-bar">
				<span class="material-icons-sharp"></span> <input type="search"
					placeholder="search"> <i class='bx bx-search'></i>
			</div>
			<div class="profile-area">
				<div class="theme-btn">
					<i class='bx bx-wallet-alt active'></i> <i
						class='bx bxs-wallet-alt'></i>
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
				<a href="#" class="active"> <i class='bx bxs-dashboard'></i>
					<h4>마이페이지</h4>
				</a> <a href="#"> <i class='bx bxs-movie-play'></i>
					<h4>구독</h4>
				</a> <a href="account.html"> <i class='bx bxs-user-detail'></i>
					<h4>계정</h4>
				</a> <a href="#"> <i class='bx bxs-dashboard'></i>
					<h4>Mypage</h4>
				</a> <a href="#"> <i class='bx bx-log-out'></i>
					<h4>로그아웃</h4>
				</a>
			</div>
			<!-- end sidebar -->

		</aside>

		<div class="account">
			<h1>계정</h1>
			<br> 기본정보 <br /> <br /> 아이디 <br /> <input type="text"
				placeholder="아이디를 입력해 주세요."> <br /> 이름 <br /> <input
				type="text" placeholder="이름을 입력해 주세요."> <br /> <br />
			<button value="submit">저장</button>
			<br /> <br /> 비밀번호 변경
			<hr />
			<h5>비밀번호를 설정하려면 아래의 링크를 눌러주세요.</h5>
			<br />
			<button>
				<a href="input_data" style="text-decoration-line: none;">비밀번호 변경</a>
			</button>
			<br /> <br> 계정 삭제 <br /> <br />
			<h4>한번 삭제한 계정은 복구할 수 없습니다.</h4>
			<br />
			<li>즐겨찾기 목록 등 개인 편의를 위해 저장한 모든 데이터가 영구적으로 삭제됩니다.</li>
			<li>이용중인 모든 유료서비스가 해지되며 결제한 금액은 환불되지 않습니다.</li> <br />
			<button value="submit">
				<a href="account_delete" style="text-decoration-line: none;">계정
					삭제</a>
			</button>
		</div>
	</main>
</body>
</html>