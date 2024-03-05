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
          	<canvas id="myChart1" style="width: 300px; height: 300px;"></canvas>
          </div>
          <div class="box2">
          	<canvas id="myChart2" style="width: 900px; height: 300px;"></canvas>
          </div>
        </div>
        <div class="graphBox2">
          <div class="box3">
          	<canvas id="myChart3" style="width: 1200px; height: 100%;"></canvas>
          </div>
        </div>
      </main>
      <!-- 메인 종료 -->

      <!-- 오른쪽 사이드바 admin_include 안의 right_sideBar로 빼냄 -->
	  <c:import url="/view/admin_include/right_sideBar.jsp" />
	  
    </div>
    <!-- 컨테이너 종료 -->
    <script src="chart/order.js"></script>
    <script src="chart/index.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script>
    // 첫 번째 차트 그리기
    var backgroundColors = [
    'rgba(192, 192, 192, 1)', // 실버
    'rgba(255, 215, 0, 1)',  // 골드
    'rgba(205, 127, 50, 1)',  // 노말
    // 추가적으로 필요한 색상들을 여기에 추가할 수 있습니다.
	];
    var labels = [];
    var ctx1 = document.getElementById('myChart1').getContext('2d');
    var myChart1 = new Chart(ctx1, {
        type: 'doughnut',
        data: {
            labels: labels,
            datasets: [{
                label: '등급 별 수',
                fill: false,
                backgroundColor: backgroundColors,
                borderColor: 'rgba(0, 0, 0, 0)',
                tension: 0.1,
                data:[]
            }]
        },
        options: {
            plugins: {
                legend: {
                    labels: {
                        color: 'rgba(125, 141, 161, 1)' // 텍스트 색상을 여기서 지정하세요
                    }
                }
            }
        }
    });
 // AJAX 요청
    $.ajax({
        url: 'GradeCount',
        type: "POST",
        contentType: "application/json",
        data: JSON.stringify({}),
        success: function(response) {
            // 서버로부터 받은 응답을 처리하는 코드
            updateChart1(response);
        },
        error: function(xhr, status, error) {
            // 에러 처리 코드
        }
    });
 	
 	function updateChart1(data){
 		var grade_count = [];
 		var labels = [];
 		for(var i = 0; i < data.length; i++) {
 			grade_count.push(data[i].grade_count);
 			labels.push(data[i].streamer_grade);
 		}
 		myChart1.data.datasets[0].data = grade_count;
 		
 		myChart1.update();
 		updateLabels1(labels);
 	}
 	
 	// labels 업데이트 함수
    function updateLabels1(newLabels) {
        myChart1.data.labels = newLabels;
        myChart1.update();
    }
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
                backgroundColor: 'rgba(100, 149, 237, 1)',
                tension: 0.1,
                data:[]
            }]
        },
        options: {
            plugins: {
                legend: {
                    labels: {
                        color: 'rgba(125, 141, 161, 1)' // 범례의 텍스트 색상 변경
                    }
                }
            },
            scales: {
                y: {
                    ticks: {
                        color: 'rgba(125, 141, 161, 1)' // Y 축 텍스트 색상 변경
                    }
                },
                x: {
                    ticks: {
                        color: 'rgba(125, 141, 161, 1)' // X 축 텍스트 색상 변경
                    }
                }
            }
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
            updateChart2(response);
        },
        error: function(xhr, status, error) {
            // 에러 처리 코드
        }
    });
 	
 	function updateChart2(data){
 		var streamer_followers = [];
 		var labels = [];
 		for(var i = 0; i < data.length; i++) {
 			streamer_followers.push(data[i].streamer_followers);
 			labels.push(data[i].streamer_id);
 		}
 		myChart2.data.datasets[0].data = streamer_followers;
 		
 		myChart2.update();
 		updateLabels2(labels);
 	}
 	
 	// labels 업데이트 함수
    function updateLabels2(newLabels) {
        myChart2.data.labels = newLabels;
        myChart2.update();
    }
 	// 세 번째 차트 그리기
    var labels = [];
    var ctx3 = document.getElementById('myChart3').getContext('2d');
    var myChart3 = new Chart(ctx3, {
        type: 'line',
        data: {
        	labels : labels,
            datasets: [{
                label: '하루 이용자',
                fill: false,
                pointBackgroundColor: 'rgba(178, 34, 34, 1)',
                pointBorderColor: 'rgba(255, 165, 0, 1)',
                backgroundColor: 'rgba(255, 165, 0, 1)',
                borderColor: 'rgba(255, 165, 0, 1)',
                tension: 0.1,
                data:[]
            }]
        },
        options: {
            plugins: {
                legend: {
                    labels: {
                        color: 'rgba(125, 141, 161, 1)' // 범례의 텍스트 색상 변경
                    }
                }
            },
            scales: {
                y: {
                    ticks: {
                        color: 'rgba(125, 141, 161, 1)' // Y 축 텍스트 색상 변경
                    }
                },
                x: {
                    ticks: {
                        color: 'rgba(125, 141, 161, 1)' // X 축 텍스트 색상 변경
                    }
                }
            }
        }
    });
    
 	// AJAX 요청
    $.ajax({
        url: 'SiteStatDate',
        type: "POST",
        contentType: "application/json",
        data: JSON.stringify({}),
        success: function(response) {
            // 서버로부터 받은 응답을 처리하는 코드
            updateChart3(response);
        },
        error: function(xhr, status, error) {
            // 에러 처리 코드
        }
    });
 	
 	function updateChart3(data){
 		var visit_count = [];
 		var labels = [];
 		for(var i = 0; i < data.length; i++) {
 			visit_count.push(data[i].visit_count);
 			labels.push(data[i].site_stat_date);
 		}
 		myChart3.data.datasets[0].data = visit_count;
 		
 		myChart3.update();
 		updateLabels3(labels);
 	}
 	
 	// labels 업데이트 함수
    function updateLabels3(newLabels) {
        myChart3.data.labels = newLabels;
        myChart3.update();
    }
	</script>
</body>
</html>
