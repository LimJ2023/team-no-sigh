<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mypage</title>
<link rel="stylesheet" href="subscribe.css">
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
<link rel="stylesheet" href="${root }user/acco.css">
</head>
<script src="https://js.tosspayments.com/v1"></script>
<script>
    let amount = 50000;

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

    let path = "/user/";
    let successUrl = window.location.origin + path + "success";
    let failUrl = window.location.origin + path + "fail";
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
  </script>
<body>
	<nav>
		<div class="container">
			<!-- logo -->
			<a href="${root }home" class="logo">
                Streamer<span>Sensor</span>
            </a>
			
			<div class="profile-area">

				<div class="profile">
					<div class="profile-photo">
						<img src="">
					</div>
					<a href="${root }user/myPage" class="user"> <img
					src="img/Person_Icon.png" alt="" class="user-img">
				</a>
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
                <a href="${root }user/account">
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
			<br>
			<div>
				구독하시겠습니까
				
					<button onclick="pay('카드',jsons.card);" type="submit">결제하기</button>
				
			</div>


		</div>
	</main>
	<!-- end of aside=============== -->

</body>

</html>