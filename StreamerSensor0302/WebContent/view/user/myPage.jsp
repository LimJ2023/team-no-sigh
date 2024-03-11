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
    <link rel="stylesheet" href="${root }user/myPage.css">
    <link rel="stylesheet" href="${root }user/test.css">
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
            <a href="${root }home" class="logo">
                Streamer<span>Sensor</span>
            </a>
           
            <div class="profile-area">
                
                <div class="profile">
                    <a href="${root }user/myPage" class="user"> <img
					src="img/Person_Icon.png" alt="" class="user-img">
				</a>
                    <h5>${users.user_id }</h5>
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
            <div class="updates">
                <i class='bx bx-refresh'></i>
                <h4>Update Available</h4>
                <small>Security Updates</small>
                <small>General Updates</small>
                <a href="#">Update Now</a>
            </div>
        </aside>
        <!-- end aside -->
        
        
        <section class="middle">
            <div class="header">
                <h1 style="color: white;">즐겨찾기</h1>
                
            </div>

            <div class="cards">
                <div class="card">
                    <div class="top">
                        <div class="left">
                            <img src="">
                            <h1>유튜브</h1>
                        </div>
                        <img src="" class="right">
                    </div>
                    <div class="middle">
                        <h4>즐찾스트리머</h4>
                        <img src="" class="chip">
                        <P>날짜</P>
                        <small>태그</small>
                    </div>
                    <div class="middle">
                        <h4>즐찾스트리머</h4>
                        <img src="" class="chip">
                        <P>날짜</P>
                        <small>태그</small>
                    </div>
                    <div class="middle">
                        <h4>즐찾스트리머</h4>>
                        <img src="" class="chip">
                        <P>날짜</P>
                        <small>태그</small>
                    </div>
                    
                </div>
                <!-- end card 1-->
                <div class="card">
                    <div class="top">
                        <div class="left">
                            <img src="">
                            <h1>치지직</h1>>
                        </div>
                        <img src="" class="right">
                    </div>
                    <div class="middle">
                        <h4>즐찾스트리머</h4>
                        <img src="" class="chip">
                    </div>
                    <div class="middle">
                        <h4>즐찾스트리머</h4>
                        <img src="" class="chip">
                    </div>
                    <div class="middle">
                        <h4>즐찾스트리머</h4>
                        <img src="" class="chip">
                    </div>
                </div>
                <!-- end card 2-->
                <div class="card">
                    <div class="top">
                        <div class="left">
                            <img src="">
                            <h1>아프리카</h1>
                        </div>
                        <img src="" class="right">
                    </div>
                    <div class="middle">
                        <h4>즐찾스트리머</h4>
                        <img src="" class="chip">
                    </div>
                    <div class="middle">
                        <h4>즐찾스트리머</h4>
                        <img src="" class="chip">
                    </div>
                    <div class="middle">
                        <h4>즐찾스트리머</h4>
                        <img src="" class="chip">
                    </div>
                </div>
                <!-- end card 3-->
            </div>
            <!-- =end cards= -->

            <%-- <div class="monthly-report">
                <div class="report">
                    <h3>Income</h3>
                    <div>
                        <details>
                            <h1>$29023</h1>
                            <h5 class="success">+3.5%</h5>
                        </details>
                        <p class="text-muted">Compared to</p>
                    </div>
                </div>
                <!-- end of income repote -->
                <div class="report">
                    <h3>Income</h3>
                    <div>
                        <details>
                            <h1>$29023</h1>
                            <h5 class="success">+3.5%</h5>
                        </details>
                        <p class="text-muted">Compared to</p>
                    </div>
                </div>
                 <!-- end of income repote -->
                <div class="report">
                    <h3>Income</h3>
                    <div>
                        <details>
                            <h1>$29023</h1>
                            <h5 class="success">+3.5%</h5>
                        </details>
                        <p class="text-muted">Compared to</p>
                    </div>
                </div>
                 <!-- end of income repote -->
            </div>
            <!-- end of monthly -->

            <div class="fast-payment">
                <h2>category</h2>
                <div class="badges">
                    <div class="badges">
                        <i class='bx bx-plus'></i>
                    </div>
                    <div class="badge">
                        <!-- 여기는 span이라 확인좀 -->
                        <span class="bg-primary"></span>
                        <div>
                            <h5>Music</h5>
                            <h4>5</h4>
                        </div>
                    </div>
                    <div class="badge">
                        <!-- 여기는 span이라 확인좀 -->
                        <span class="bg-primary"></span>
                        <div>
                            <h5>esoprts</h5>
                            <h4>2</h4>
                        </div>
                    </div>
                    <div class="badge">
                        <!-- 여기는 span이라 확인좀 -->
                        <span class="bg-primary"></span>
                        <div>
                            <h5>game</h5>
                            <h4>$50</h4>
                        </div>
                    </div>
                    <div class="badge">
                        <!-- 여기는 span이라 확인좀 -->
                        <span class="bg-primary"></span>
                        <div>
                            <h5>mukbang</h5>
                            <h4>20</h4>
                        </div>
                    </div>
                </div>
            </div> 
            <!-- end of payment -->
            <canvas id="chart"></canvas>

        </section> --%>
        <!-- end middle -->
        <section class="right">
            <div class="investments">
                <div class="header">
                    <h1>순위</h1>
                    <!-- 여기에 스트리머 순위로 넘어가는 페이지 삽입확인 -->
                    <a href="#">more <i class='bx bx-chevron-right'></i></a>
                </div>

                <div class="investment">
                    <img src="">
                    <h4>감스트</h4>
                    <div class="data-time">
                        <p>7 nov, 2021</p>
                        <small class="text-muted">9:14px</small>
                    </div>
                    <div class="bonds">
                        <p>태그</p>
                        <small class="text-muted">bonds</small>
                    </div>
                    <div class="amount">
                        <h5>구독자수</h5>
                        <small class="badge">-4.27%</small>
                    </div>
                </div>
                <!-- end of investments -->
                <div class="investment">
                    <img src="">
                    <h4>Uniliver</h4>
                    <div class="data-time">
                        <p>7 nov, 2021</p>
                        <small class="text-muted">9:14px</small>
                    </div>
                    <div class="bonds">
                        <p>태그</p>
                        <small class="text-muted">bonds</small>
                    </div>
                    <div class="amount">
                        <h5>구독자수</h5>
                        <small class="success">-4.27%</small>
                    </div>
                </div>
                <!-- end of investments -->
            </div>
        </section>
        <!-- end right -->
    </main>
    <!-- end of aside=============== -->

    
</body>

</html>