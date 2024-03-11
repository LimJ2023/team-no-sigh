<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mypage</title>
<link rel="stylesheet" href="acco.css">
<!-- 아이콘 -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--폰트  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Monoton&family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<!-- box icons -->
<link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
	rel="stylesheet">

</head>
<script src="https://js.tosspayments.com/v1"></script>
<script>
let amount = 3900;

let tossPayments = TossPayments("test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq");

function pay(method, requestJson) {
  console.log(requestJson);
  tossPayments.requestPayment(method, requestJson).catch(function (error) {
    if (error.code === "USER_CANCEL") {
      alert("유저가 취소했습니다.");
    } else {
      alert(error.message);
    }
  });
}

let path = "/StreamerSensor0302/";
let successUrl = window.location.origin + path + "/user/success";
let failUrl = window.location.origin + path + "/user/fail";
let callbackUrl = window.location.origin + path + "va_callback";
let orderId = new Date().getTime();

let jsons = {
  card: {
    amount: amount,
    orderId: "sample-" + orderId,
    orderName: "구독결제",
    successUrl: successUrl,
    failUrl: failUrl,
    cardCompany: null,
    cardInstallmentPlan: null,
    maxCardInstallmentPlan: null,
    useCardPoint: false,
    customerName: "구독결제",
    customerEmail: null,
    customerMobilePhone: null,
    taxFreeAmount: null,
    useInternationalCardOnly: false,
    flowMode: "DEFAULT",
    discountCode: null,
    appScheme: null,
  },
  vaccount: {
    //가상계좌 결제창

    amount: amount,
    orderId: "sample-" + orderId,
    orderName: "구독결제",
    successUrl: successUrl,
    failUrl: failUrl,
    validHours: 72,
    virtualAccountCallbackUrl: callbackUrl,
    customerName: "박토스",
    customerEmail: null,
    customerMobilePhone: null,
    taxFreeAmount: null,
    cashReceipt: {
      type: "소득공제",
    },
    useEscrow: false,
  },
  transfer: {
    //계좌이체 결제창

    amount: amount,
    orderId: "sample-" + orderId,
    orderName: "구독결제",
    successUrl: successUrl,
    failUrl: failUrl,
    customerName: "박토스",
    customerEmail: null,
    customerMobilePhone: null,
    taxFreeAmount: null,
    cashReceipt: {
      type: "소득공제",
    },
    useEscrow: false,
  },
  phone: {
    // 휴대폰 결제창

    amount: amount,
    orderId: "sample-" + orderId,
    orderName: "구독결제",
    successUrl: successUrl,
    failUrl: failUrl,
    mobileCarrier: null,
  },

  certificate: {
    //상품권 결제창
    amount: amount,
    orderId: "sample-" + orderId,
    orderName: "구독결제",
    successUrl: successUrl,
    failUrl: failUrl,
  },

  bookcert: {
    //도서문화상품권 결제창
    amount: amount,
    orderId: "sample-" + orderId,
    orderName: "구독결제",
    successUrl: successUrl,
    failUrl: failUrl,
  },
  gamecert: {
    // 게임문화상품권 결제창
    amount: amount,
    orderId: "sample-" + orderId,
    orderName: "구독결제",
    successUrl: successUrl,
    failUrl: failUrl,
  },
};  



/* $.ajax({
  url: "/user/success", // AJAX 요청을 보낼 URL
  type: 'POST', // 요청 메서드 (GET, POST 등)
  contentType: 'application/json', // 전송하는 데이터의 타입 (JSON)
  dataType: 'json', // 서버에서 받을 데이터의 타입 (JSON)
  data: JSON.stringify(jsonData), // 전송할 데이터 (JSON 형태로 변환)
  success: function(response) {
    console.log(response);
    // 성공 처리 로직 추가
  },
  error: function(xhr, status, error) {
    console.error(xhr);
    console.error(status);
    console.error(error);
    // 실패 처리 로직 추가
  }
}); */
  </script>
<body>
	<nav>
		<div class="container">
			<!-- logo -->
			<a href="${root }/home" class="logo"> Streamer<span>Sensor</span>
			</a>
			
			<div class="profile-area">

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

                <a href="${root }user/logout">
                    <i class='bx bx-log-out'></i>
                    <h4>로그아웃</h4>
                </a>
			</div>
			<!-- end sidebar -->

		</aside>

		<div class="account">
			<h1>구독</h1>


			<section class="pricing_section">
				<div class="pricing_div">
					<div class="pricing_header">

						<div class="subscription_plan_list subs_default">
							<h1 class="pricing_title" style="color: blueviolet;">
								<i class='bx bxs-user-x'></i> Default
							</h1>
							<div class="pricing_text pricing_default">
								<h2 style="position: relative; top: 20px;">회원 가입만 하셨을 경우</h2>
								<ul>
									<li>•스트리머의 순위를 보는데 제약이 있습니다</li>
									<br />
									<li>•회원정보 수정이 가능합니다</li>
									<br />
									<li>•게시판 글 등록을 할 수 있습니다</li>
								</ul>
							</div>
							<br />

						</div>

						<div class="subscription_plan_list subs_subbed">
							<h1 class="pricing_title">
								<i class='bx bxs-hand-right'></i> Subscription
							</h1>
							<div class="pricing_text pricing_subbed">
								<h2 style="position: relative; top: 20px;">구독기능</h2>
								<ul>
									<li>•더 구체적인 순위를 알 수 있습니다</li>
									<br />
									<li>•즐겨찾기를 통해 관심있는 스트리머목록을 <br /> 관리하실수 있습니다
									</li>
									<br />
									<li>•스트리머의 상세정보를 확인할수 있습니다</li>
								</ul>
								<div class="subs_price_month">
									<h3 style="size: 50px;">
										<i class='bx bx-check'></i>월 ₩3900원
									</h3>

									<h5 style="color: black;">•취소가 가능합니다</h5>
									<br />
									<h4 style="color: #DB4455;">구독하시겠습니까?</h4>
								</div>
								<button class="subscription_button"
									onclick="pay('카드',jsons.card);" type="submit">결제하기</button>
							</div>
						</div>
					</div>

					<div class="subs_detail">

						<div class="subs_advantages">
							<div class="subs_advantages_div">
								<img src="${root }./img/ranking.png" class="subs_advantages_icon">
								<div class="subs_advantages_div_detail">더 구체적인 순위 정보를 확인할
									수 있습니다</div>
							</div>
							<div class="subs_advantages_div">
								<img src="${root }./img/favorite.png" class="subs_advantages_icon">
								<div class="subs_advantages_div_detail">즐겨찾기를 통해 관심있는 스트리머
									목록을 관리할 수 있습니다</div>
							</div>
							<div class="subs_advantages_div">
								<img src="${root }./img/writing.png" class="subs_advantages_icon">
								<div class="subs_advantages_div_detail">스트리머의 상세 정보를 확인할 수
									있습니다</div>
							</div>
						</div>

					</div>
			</section>

		</div>
	</main>
	<!-- end of aside=============== -->

</body>

</html>