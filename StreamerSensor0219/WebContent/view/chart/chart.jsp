<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined"
      rel="stylesheet"/>
      <!-- JQuery -->
    <script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
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
        <!-- 왼쪽 사이드바 admin_include 안의 left_sideBar로 빼냄 -->
		<c:import url="/view/admin_include/left_sideBar.jsp" />
      </aside>

      <!-- 메인 컨텐츠 -->
      <main>
        <div class="graphBox1">
          <div class="box1">
          	<canvas id="myChart1" width="300" height="300"></canvas>
          </div>
          <div class="box2">
          	<canvas id="myChart2" width="1000" height="300"></canvas>
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

      <!-- 오른쪽 사이드바 admin_include 안의 right_sideBar로 빼냄 -->
	  <c:import url="/view/admin_include/right_sideBar.jsp" />
	  
    </div>
    <!-- 컨테이너 종료 -->
    <script src="order.js"></script>
    <script src="index.js"></script>
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
    // 첫 번째 차트 그리기
    var ctx1 = document.getElementById('myChart1').getContext('2d');
    var myChart1 = new Chart(ctx1, {
        type: 'doughnut',
        data: {
            labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
            datasets: [{
                label: '# of Votes',
                data: [12, 19, 3, 5, 2, 3],
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
            }]
        },
        options: {
            // 차트 옵션 설정
        }
    });

    // 두 번째 차트 그리기
    var labels = [];
    var ctx2 = document.getElementById('myChart2').getContext('2d');
    var myChart2 = new Chart(ctx2, {
        type: 'bar',
        data: {
        	labels : labels,
            datasets: [{
                label: '팔로워 수',
                fill: false,
                borderColor: 'rgb(75, 192, 192)',
                tension: 0.1,
                data:[]
            }]
        },
        options: {
            // 차트 옵션 설정
        }
    });
 	// AJAX 요청
    $.ajax({
        url: 'StreamerFollowers',
        type: "POST",
        contentType: "application/json",
        data: JSON.stringify({}),
        success: function(response) {
            // 서버로부터 받은 응답을 처리하는 코드
            updateChart(response);
        },
        error: function(xhr, status, error) {
            // 에러 처리 코드
        }
    });
 	
 	function updateChart(data){
 		var streamer_followers = [];
 		var labels = [];
 		for(var i = 0; i < data.length; i++) {
 			streamer_followers.push(data[i].streamer_followers);
 			labels.push(data[i].streamer_idx);
 		}
 		myChart2.data.datasets[0].data = streamer_followers;
 		
 		myChart2.update();
 		updateLabels(labels);
 	}
 	
 	// labels 업데이트 함수
    function updateLabels(newLabels) {
        myChart2.data.labels = newLabels;
        myChart2.update();
    }
	</script>

</body>
</html>
