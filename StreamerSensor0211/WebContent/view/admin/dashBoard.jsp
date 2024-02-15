<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="admin/dashBoard_style.css" />
    <title>관리자 페이지 1</title>
  </head>
  <body>
    <div class="container">
      <aside>
        <div class="toggle">
          <div class="logo">
            <h2>관리자</h2>
          </div>
          <div class="close" id="close-btn">
            <span class="material-symbols-outlined"> close </span>
          </div>
        </div>
        <!--           사이드바             -->
        <div class="sidebar">
          <a href="#" class="active">
            <span class="material-symbols-outlined"> empty_dashboard </span>
            <h3>대시보드</h3>
          </a>
          <a href="./Members_page/members.html">
            <span class="material-symbols-outlined"> group </span>
            <h3>회원 관리</h3>
          </a>
          <a href="./analysis_page/analysis.html">
            <span class="material-symbols-outlined"> insights </span>
            <h3>분석</h3>
          </a>
          <a href="/home">
            <span class="material-symbols-outlined"> logout </span>
            <h3>로그아웃</h3>
          </a>
        </div>
        <!-- 사이드바 종료 -->
      </aside>

      <!-- 메인 컨텐츠 -->
      <main>
        <h1>상세 지표</h1>
        <!-- 분석 -->
        <div class="analyse">
          <div class="sales">
            <div class="status">
              <div class="info">
                <h3>총 매출</h3>
                <h1>${info.total_revenue}</h1>
              </div>
              <div class="progress">
                <svg>
                  <circle cx="38" cy="38" r="36"></circle>
                </svg>
                <div class="percentage">
                  <p>${info.increase_revenue }%</p>
                </div>
              </div>
            </div>
          </div>
          <div class="visits">
            <div class="status">
              <div class="info">
                <h3>사이트 방문수</h3>
                <h1>${info.visit_count}</h1>
              </div>
              <div class="progress">
                <svg>
                  <circle cx="38" cy="38" r="36"></circle>
                </svg>
                <div class="percentage">
                  <p>${info.increase_visit }%</p>
                </div>
              </div>
            </div>
          </div>
          <div class="highlight">
              <div class="info">
                <h3>최근 평가된 컨텐츠</h3>
                <h3>평점 : </h3>
              </div>
              <div class="content">
                <img src="./images/con1.png">
              </div>
          </div>
          <!-- <div class="searches">
            <div class="status">
              <div class="info">
                <h3>사이트 검색량</h3>
                <h1>14,147</h1>
              </div>
              <div class="progress">
                <svg>
                  <circle cx="38" cy="38" r="36"></circle>
                </svg>
                <div class="percentage">
                  <p>+21%</p>
                </div>
              </div>
            </div>
          </div> -->
        </div>
        <!-- 분석파트 끝 -->

        <!-- 새 유저 시작 -->
        <div class="new-users">
          <h2>신규 회원</h2>
          <div class="user-list">
            <div class="user">
              <img src="img/admin/profile1.png" />
              <h2>Bocchi</h2>
              <p>55 Min Ago</p>
            </div>
            <div class="user">
              <img src="img/admin/profile2.png" />
              <h2>Nijika</h2>
              <p>50 Min Ago</p>
            </div>
            <div class="user">
              <img src="img/admin/profile3.png" />
              <h2>Ryo</h2>
              <p>30 Min Ago</p>
            </div>
            <div class="user">
              <img src="img/admin/profile4.png" />
              <h2>Kita</h2>
              <p>10 Min Ago</p>
            </div>
          </div>
        </div>
        <!-- 새 유저 끝 -->

        <!-- 최근 주문 시작 -->
        <div class="recent-orders">
          <h2>최근 구독</h2>
          <table>
            <thead>
              <tr>
                <th>구독 종류</th>
                <th>고유 번호</th>
                <th>결제 정보</th>
                <th>상태</th>
                <th></th>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
          <a href="#">모두 보기</a>
        </div>
        <!-- 최근 주문 끝 -->
      </main>
      <!-- 메인 종료 -->

      <!-- 오른쪽 섹션 시작 -->
      <div class="right-section">
        <div class="nav">
          <button class="menu-btn">
            <span class="material-symbols-outlined"> menu </span>
          </button>
          <div class="dark-mode">
            <span class="material-symbols-outlined active"> light_mode </span>
            <span class="material-symbols-outlined"> dark_mode </span>
          </div>

          <div class="profile">
            <div class="info">
              <b>요한</b>
              <small class="text-muted">Admin</small>
            </div>
            <div class="profile-photo">
              <img src="img/admin/kitang.jpg" />
            </div>
          </div>
        </div>
        <!-- 오른쪽 nav 종료 -->

        <!-- 어드민 기능 시작 -->
        <div class="user-profile">
          <div class="logo">
            <img src="img/admin/KITA2.JPG" />
            <h2>${admin.admin_name }</h2>
            <p>${admin.email}</p>
          </div>
        </div>

        <div class="reminders">
          <div class="header">
            <h2>알림</h2>
              <button>
                <span class="message-count">30</span>
                <span class="material-symbols-outlined"> notifications_none </span>
              </button>
          </div>

          <div class="notification">
            <div class="icon">
              <span class="material-symbols-outlined"> volume_up </span>
            </div>
            <div class="content">
              <div class="info">
                <h3>호출</h3>
                <small class="text_muted"> 새 알림 3 건 </small>
              </div>
              <span class="material-symbols-outlined"> more_vert </span>
            </div>
          </div>

          <div class="notification deactive">
            <div class="icon">
              <span class="material-symbols-outlined"> edit </span>
            </div>
            <div class="content">
              <div class="info">
                <h3>공지사항 쓰기</h3>
                <small class="text_muted"> 최근 1개 등록함 </small>
              </div>
              <span class="material-symbols-outlined"> more_vert </span>
            </div>
          </div>

          <div class="notification deactive">
            <div class="icon">
              <span class="material-symbols-outlined"> edit </span>
            </div>
            <div class="content">
              <div class="info">
                <h3>유튜브 api 가져오기</h3>
                <small class="text_muted"> 최근 1개 가져옴 </small>
              </div>
              <span class="material-symbols-outlined"> more_vert </span>
            </div>
          </div>

          <div class="notification add-reminders">
            <div>
              <span class="material-symbols-outlined"> add </span>
              <h3>새 기능 추가</h3>
            </div>
          </div>
        </div>
        <!-- 리마인더 종료 -->
      </div>
      <!-- 오른쪽 섹션 종료 -->
      
    </div>
    <!-- 컨테이너 종료 -->
    <script src="https://apis.google.com/js/api.js"></script>
	<script src="admin/youtube_api.js"></script>
    <script src="admin/order.js"></script>
    <script src="admin/admin.js"></script>
  </body>
</html>