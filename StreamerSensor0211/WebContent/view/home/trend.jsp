<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="home/trend.css" />
    <!-- Fav icon -->
    <link rel="shortcut icon" href="img/fav-icon.png" type="image/x-icon" />
    <!-- box icons -->
    <link
      href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="home/carousel.css" />
    <title>Streamer Sensor</title>
  </head>
  <body>
    <!-- header -->
    <header>
      <!-- nav -->
      <div class="nav container">
        <!-- logo -->
        <a href="home" class="logo"> Streamer<span>Sensor</span> </a>
        <!-- search box (검색)-->
        <div class="search-box">
          <input
            type="search"
            name=""
            id="search-input"
            placeholder="Search streamer"
          />
          <i class="bx bx-search"></i>
        </div>
        <!-- user 사진 제대로 찾아서 넣어야함 (여기는 마이페이지랑 로그인되는 버튼구현)-->
        <a href="login/html.html" class="user">
          <img src="img/Person_Icon.png" alt="" class="user-img" />
        </a>
        <!-- navbar (각각 달아줘야함)-->
        <div class="navbar">
          <a href="home" class="nav-link nav-active">
            <i class="bx bx-home"></i>
            <span class="nav-link-title">home</span>
          </a>
          <a href="trend" class="nav-link">
            <i class="bx bxs-hot"></i>
            <span class="nav-link-title">trending</span>
          </a>
          <a href="leaderBoard" class="nav-link">
            <i class="bx bx-bar-chart-alt-2"></i>
            <span class="nav-link-title">leaderBoard</span>
          </a>
          <a href="../noticeBoardPage/noticeBoard.html" class="nav-link">
            <i class="bx bx-message-detail"></i>
            <span class="nav-link-title">community</span>
          </a>
          <a href="../index.html" class="nav-link">
            <i class="bx bx-news"></i>
            <span class="nav-link-title">news</span>
          </a>
          <a href="admin" class="nav-link">
            <i class="bx bx-wrench"></i>
            <span class="nav-link-title">관리자페이지 진입 버튼1</span>
          </a>
        </div>
      </div>
    </header>

    <section class="trend-section">
      <div class="rank-container">
        <div class="rank-content-horizon">
        	<h2>가장 있기있는 방송 목록</h2>
        	<div class="horizon-buttons">
        		<button id="age">연령대별</button>
        		<button>국적별</button>
        		<button>추세별</button>
        	</div>
        </div>
        <div class="rank-content-vertical">
          <div class="rank-ver-list">
            <div class="list-category">
                리뷰
            </div>
            <div class="rank-info">
              <div class="rank-img">
                <img src="img/0101.png" />
              </div>
              <div class="rank-info-foot">
                <div class="rank-name">리뷰1</div>
                <div class="rank-views">100</div>
                <div class="rank-trend"><i class='bx bx-right-top-arrow-circle bx-md'></i></div>
              </div>
            </div>
            <div class="rank-info">
                <div class="rank-img">
                  <img src="img/0102.png" />
                </div>
                <div class="rank-info-foot">
                  <div class="rank-name">리뷰2</div>
                  <div class="rank-views">200</div>
                  <div class="rank-trend"><i class='bx bx-right-arrow-circle bx-md'></i></div>
                </div>
              </div>
              <div class="rank-info">
                <div class="rank-img">
                  <img src="img/0103.png" />
                </div>
                <div class="rank-info-foot">
                  <div class="rank-name">리뷰3</div>
                  <div class="rank-views">300</div>
                  <div class="rank-trend"><i class='bx bx-right-down-arrow-circle bx-md'></i></div>
                </div>
              </div>
          </div>
          <div class="rank-ver-list">
            <div class="list-category">
                게임
            </div>
            <div class="rank-info">
                <div class="rank-img">
                  <img src="img/0106.png" />
                </div>
                <div class="rank-info-foot">
                  <div class="rank-name">게임1</div>
                  <div class="rank-views">400</div>
                  <div class="rank-trend"><i class='bx bx-up-arrow-circle bx-md'></i></div>
                </div>
              </div>
              <div class="rank-info">
                <div class="rank-img">
                  <img src="img/0104.png" />
                </div>
                <div class="rank-info-foot">
                  <div class="rank-name">게임2</div>
                  <div class="rank-views">500</div>
                  <div class="rank-trend"><i class='bx bx-down-arrow-circle bx-md'></i></div>
                </div>
              </div>
              <div class="rank-info">
                <div class="rank-img">
                  <img src="img/0105.png" />
                </div>
                <div class="rank-info-foot">
                  <div class="rank-name">게임3</div>
                  <div class="rank-views">600</div>
                  <div class="rank-trend"><i class='bx bx-right-top-arrow-circle bx-md'></i></div>
                </div>
              </div>
          </div>
          <div class="rank-ver-list">
            <div class="list-category">
                음악
            </div>
            <div class="rank-info">
                <div class="rank-img">
                  <img src="img/0101.png" />
                </div>
                <div class="rank-info-foot">
                  <div class="rank-name">음악1</div>
                  <div class="rank-views">400</div>
                  <div class="rank-trend"><i class='bx bx-up-arrow-circle bx-md'></i></div>
                </div>
              </div>
              <div class="rank-info">
                <div class="rank-img">
                  <img src="img/0102.png" />
                </div>
                <div class="rank-info-foot">
                  <div class="rank-name">음악2</div>
                  <div class="rank-views">500</div>
                  <div class="rank-trend"><i class='bx bx-down-arrow-circle bx-md'></i></div>
                </div>
              </div>
              <div class="rank-info">
                <div class="rank-img">
                  <img src="img/0103.png" />
                </div>
                <div class="rank-info-foot">
                  <div class="rank-name">음악3</div>
                  <div class="rank-views">600</div>
                  <div class="rank-trend"><i class='bx bx-right-top-arrow-circle bx-md'></i></div>
                </div>
              </div>
          </div>
          
        </div>
      </div>
    </section>

    <script src="scripts/script.js"></script>
  </body>
</html>