<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
      rel="stylesheet"/>
    <link rel="stylesheet" href="chart/chart_style.css" />
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
          <a href="admin" >
            <span class="material-symbols-outlined"> empty_dashboard </span>
            <h3>대시보드</h3>
          </a>
          <a href="../Members_page/members.html">
            <span class="material-symbols-outlined"> group </span>
            <h3>회원 관리</h3>
          </a>
          <a href="#" class="active">
            <span class="material-symbols-outlined"> insights </span>
            <h3>분석</h3>
          </a>
          <a href="home">
            <span class="material-symbols-outlined"> logout </span>
            <h3>로그아웃</h3>
          </a>
        </div>
        <!-- 사이드바 종료 -->
      </aside>

      <!-- 메인 컨텐츠 -->
      <main>
        <div class="graphBox1">
          <div class="box1">
          	<canvas id="myChart"></canvas>
          </div>
          <div class="box2">
          </div>
        </div>
        <div class="graphBox2">
          <div class="box3">
          </div>
        </div>
        <div class="categoryBox1">
          <div class="category-chart">
            <div class="tab">
              <button class="tablinks" id="tab1" onclick="openTab(event, 'Tab1')">Game</button>
              <button class="tablinks" onclick="openTab(event, 'Tab2')">Real Life</button>
              <button class="tablinks" onclick="openTab(event, 'Tab3')">Music</button>
              <button class="tablinks" onclick="openTab(event, 'Tab4')">eSports</button>
              <button class="tablinks" onclick="openTab(event, 'Tab5')">Creative</button>
            </div>
            
            <div id="Tab1" class="tabcontent">
              <h1>Game</h1>
              <table>
              	 <thead>
                  <tr>
                    <th>Name</th>
                    <th>Follower</th>
                    <th>Platform</th>
                    <th>Membership</th>
                  </tr>
              </table>
            </div>
            
            <div id="Tab2" class="tabcontent">
              <h1>Real Life</h1>
              <table>
                <thead>
                 <tr>
                   <th>Name</th>
                   <th>Follower</th>
                   <th>Platform</th>
                   <th>Membership</th>
                 </tr>
             </table>
            </div>
            
            <div id="Tab3" class="tabcontent">
              <h1>Music</h1>
              <table>
                <thead>
                 <tr>
                   <th>Name</th>
                   <th>Follower</th>
                   <th>Platform</th>
                   <th>Membership</th>
                 </tr>
             </table>
            </div>
            
            <div id="Tab4" class="tabcontent">
              <h1>eSports</h1>
              <table>
                <thead>
                 <tr>
                   <th>Name</th>
                   <th>Follower</th>
                   <th>Platform</th>
                   <th>Membership</th>
                 </tr>
             </table>
            </div>
            
            <div id="Tab5" class="tabcontent">
              <h1>Creative</h1>
              <table>
                <thead>
                 <tr>
                   <th>Name</th>
                   <th>Follower</th>
                   <th>Platform</th>
                   <th>Membership</th>
                 </tr>
             </table>
            </div>
          </div>
        </div>
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
              <img src="images/kitang.jpg" />
            </div>
          </div>
        </div>
        <!-- 오른쪽 nav 종료 -->

        <!-- 어드민 기능 시작 -->
        <div class="user-profile">
          <div class="logo">
            <img src="./images/KITA2.JPG" />
            <h2>회기사천왕임요한</h2>
            <p>Web Developer</p>
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

          <button class="notification">
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
          </button>

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
    <script src="order.js"></script>
    <script src="index.js"></script>
    <script src="myChart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
      window.onload = function () {
        document.getElementById('tab1').click();
      };
    
      function openTab(evt, tabName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
          tabcontent[i].style.display = "none";
        }
    
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
          tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
    
        document.getElementById(tabName).style.display = "block";
        evt.currentTarget.className += " active";
      }
    </script>
	<script>
		const ctx = document.getElementById('myChart');

		new Chart(ctx,
				{
					type : 'doughnutz',
					data : {
						labels : [ 'Red', 'Blue', 'Yellow', 'Green', 'Purple',
								'Orange' ],
						datasets : [ {
							label : '# of Votes',
							data : [ 12, 19, 3, 5, 2, 3 ],
							borderWidth : 1
						} ]
					},
					options : {
						scales : {
							y : {
								beginAtZero : true
							}
						}
					}
				});
	</script>
</body>
</html>
