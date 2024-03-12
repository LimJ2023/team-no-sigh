<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value='${pageContext.request.contextPath}/' />
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="leaderBoard/rankPage.css" />
<!-- 	<!-- link swiper css -->
<link rel="stylesheet" href="swiper-bundle.min.css">
<!--     Fav icon -->
<link rel="shortcut icon" href="../img/fav-icon.png" type="image/x-icon">
<!-- box icons -->
<link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
	rel="stylesheet">
<title>Streamer Sensor</title>
<script src="leaderBoard/likes.js"></script>
</head>


<body>
 <script>
var userId = '${loginUserBean.user_id}';
var rootPath = '${root}';
</script> 
	<header>
		<!-- nav container(위쪽 로고부터 검색창, 회원이미지까지) home_include 안의 logo_include로 뺴냄 -->
		<c:import url="/view/home_include/logo_include.jsp" />
		<!-- navbar (왼쪽 사이드바) home_include 안의 left_include로 빼냄 -->
		<c:import url="/view/home_include/left_sideBar.jsp" />
	</header>


	<%-- <section class="rankContainer">
		<div class="tempDiv">
			<h2>로그인 : ${loginUserBean.user_name } 입니다</h2>
			<h2>구독 : ${loginUserBean.subscription }</h2>
			<h2>${sumAVG }</h2>
			<h2>hi</h2>
		</div> --%>


		<div class="rankHead" style="border-radius: 1rem">
			
<c:choose>
	<c:when test="${loginUserBean.subscription eq 'y'}">
		<table class="table filterTable">
				<tr class="rank-table-filters">
					<td class="td_filter"></td>
					<td class="td_filter"><input type="text" id="myInput"
						onkeyup="applyFilters()" placeholder="스트리머 검색"
						class="searchInput" /></td>
					<td class="td_filter"><input type="text" id="titleInput"
						onkeyup="applyFilters()" placeholder="제목 검색"
						class="searchInput" /></td>
					<td class="td_filter"></td>
					<td class="td_filter"><select name="categorySelect"
						id="categorySelect" onchange="applyFilters()"
						class="categorySelect">
							<option value="" class="categoryOption">Category</option>
							<option value="영화" class="categoryOption">영화</option>
							<option value="게임" class="categoryOption">게임</option>
							<option value="음악" class="categoryOption">음악</option>
							<option value="리뷰" class="categoryOption">리뷰</option>
							<option value="주식" class="categoryOption">주식</option>
							<option value="음식" class="categoryOption">음식</option>
							<option value="수다" class="categoryOption">수다</option>
							<option value="스포츠" class="categoryOption">스포츠</option>
					</select></td>
					<td class="td_filter filter_date">
					<!-- <div class="date-picker">
							<label for="streamingDate">날짜 선택: </label> --> <input type="date"
								id="streamingDate" name="streamingDate"
								onchange="loadRankingData()" />
						<!-- </div> -->
					</td>
				</tr>
			</table>
	</c:when>
	<c:otherwise>
		<table class="table filterTable">
				<tr class="rank-table-filters">
					<td class="td_filter"></td>
					<td class="td_filter">
						<div class="input-wrapper"><input type="text" id="myInput"
						placeholder="스트리머 검색"
						class="searchInput"  disabled/>
						<div class="overlay-div">
							<img src="img/leaderBoard/coloredLock.png" class="lockedFilter"/>
							<p class="lockDescription">구독 후 사용할 수 있는 기능입니다</p>
							</div>
						</div></td>
					<td class="td_filter">
					<div class="input-wrapper"><input type="text" id="titleInput"
						placeholder="제목 검색"
						class="searchInput"  disabled/>
						<div class="overlay-div">
							<img src="img/leaderBoard/coloredLock.png" class="lockedFilter"/>
							<p class="lockDescription">구독 후 사용할 수 있는 기능입니다</p></div>
						</div></td>
					<td class="td_filter"></td>
					<td class="td_filter">
					<div class="input-wrapper"><select name="categorySelect"
						id="categorySelect" 
						class="categorySelect" disabled>
							<option value="" class="categoryOption"> _ _ _ </option>
					</select>
					<div class="overlay-div">
							<img src="img/leaderBoard/coloredLock.png" class="lockedFilter"/>
							<p class="lockDescription">구독 후 사용할 수 있는 기능입니다</p></div>
						</div></td>
					<td class="td_filter filter_date">
					<!-- <div class="date-picker">
							<label for="streamingDate">날짜 선택: </label> --> 
							<div class="input-wrapper"><input type="date"
								id="streamingDate" name="streamingDate"
								data-placeholder = " "
								disabled/>
						<!-- </div> -->
						<div class="overlay-div">
							<img src="img/leaderBoard/coloredLock.png" class="lockedFilter"/>
							<p class="lockDescription">구독 후 사용할 수 있는 기능입니다</p></div>
						</div>
					</td>
				</tr>
			</table>
	</c:otherwise>
</c:choose>



		</div>

		<div class="rankContents" style="border-radius: 1rem">
			<h2 class="tableH2">${ranking.rank_date }순위</h2>
			<div class="table-responsive">
				<table class="table rank-table">
					<thead>
						<tr class="rank-table-tr">
							<th scope="col" class="rankPlace">순위</th>
							<th scope="col" colspan="1">스트리머</th>
							<th scope="col">방송이름</th>
							<th scope="col">평균 시청자 수</th>
							<th scope="col">좋아요 수</th>
							<th scope="col">일일 시청자 수</th>
							<th scope="col">팔로워 수</th>
							<th scope="col">카테고리</th>
						</tr>
					</thead>

					<tbody class="tbody">		
						<c:forEach var="ranking" items="${rankings}">
							<c:set var="rankPlace" value="${rankPlace+1 }" />
							<tr id="table_row">

								<c:choose>
									<%--로그인 하지 않은 사용자의 경우 리스트 5개까지 보여줌 --%>
									<c:when test="${rankPlace <=5}">
										<td class="td-rankPlace">${rankPlace }</td>
										<td class="td-streamerInfo">
											<div class='rank-streamer'>
												<div class='rank-streamer-info'>
													<img src="img/streamer_profile/${ranking.streamer_image }.png"
														class="table-icon" />

													<c:choose>
														<c:when test="${ranking.streamer_platform eq '유튜브'}">
															<img src="img/leaderBoard/logo_youtube.png"
																class='rank-streamer-info-logo' />
														</c:when>
														<c:when test="${ranking.streamer_platform eq '치지직'}">
															<img src="img/leaderBoard/logo_chzzk.png"
																class='rank-streamer-info-logo' />
														</c:when>
														<c:when test="${ranking.streamer_platform eq '아프리카'}">
															<img src="img/leaderBoard/afreecaTV_logo.png"
																class='rank-streamer-info-logo' />
														</c:when>
													</c:choose>
												</div>
												${ranking.streamer_id }
											</div>
										</td>
										<td class="td td-description">${ranking.streaming_description }</td>

										<td class="td td-avgViewers avgV-bar"
											style="width:${(ranking.avg_viewers / sumAVG) * 100 }%;">${ranking.avg_viewers }</td>

										<td class="td td-likes">
											<div class="likes-div">
												<div class="likes-bar"
													style="width:${(ranking.likes / likesByDate) * 100}%;"></div>
												<div class="likes">${ranking.likes }</div>
											</div>
										</td>
										<td class="td td-dailyViewers">
											<div class="daily-div">
												<div class="daily-bar"
													style="width:${(ranking.daily_viewers / sumDaily) * 100}%;"></div>
												<div class="dailyV">${ranking.daily_viewers }</div>
											</div>
										</td>
										<td class="td td-followers">${ranking.streamer_followers }</td>
										<%-- <td class="td td-heart" onclick="toggleHeart('${rankPlace}', '${ranking.streamer_id }', '${ranking.stream_categorys_id }')">
											<img src="img/leaderBoard/empty_heart.png" alt=""  id="heart-${rankPlace }"/>
										</td> --%>

										<td class="td td-category">${ranking.categorys }</td>
									</c:when>


									<%-- 구독한 사용자의 경우 전체 리스트 보여주기 --%>
									<c:when test="${loginUserBean.subscription eq 'y'}">
										<td class="td td-rankPlace rankPlace">${rankPlace }</td>
										<td class="td td-streamerInfo">
											<div class='rank-streamer'>
												<div class='rank-streamer-info'>
													<img src="img/streamer_profile/${ranking.streamer_image }.png"
														class="table-icon" />

													<c:choose>
														<c:when test="${ranking.streamer_platform eq '유튜브'}">
															<img src="img/leaderBoard/logo_youtube.png"
																class='rank-streamer-info-logo' />
														</c:when>
														<c:when test="${ranking.streamer_platform eq '치지직'}">
															<img src="img/leaderBoard/logo_chzzk.png"
																class='rank-streamer-info-logo' />
														</c:when>
														<c:when test="${ranking.streamer_platform eq '아프리카'}">
															<img src="img/leaderBoard/afreecaTV_logo.png"
																class='rank-streamer-info-logo' />
														</c:when>
													</c:choose>
												</div>
												${ranking.streamer_id }
											</div>
										</td>
										<td class="td td-description"><div class="rank_desc">${ranking.streaming_description }</div></td>

										<td class="td td-avgViewers avgV-bar"
											style="width:${(ranking.avg_viewers / sumAVG) * 100 }%;">${ranking.avg_viewers }</td>

										<td class="td td-likes">
											<div class="likes-div">
												<div class="likes-bar"
													style="width:${(ranking.likes / likesByDate) * 100}%;"></div>
												<div class="likes">${ranking.likes }</div>
											</div>
										</td>
										<td class="td td-dailyViewers">
											<div class="daily-div">
												<div class="daily-bar"
													style="width:${(ranking.daily_viewers / sumDaily) * 100}%;"></div>
												<div class="dailyV">${ranking.daily_viewers }</div>
											</div>
										</td>
										<td class="td td-followers">${ranking.streamer_followers }</td>

										<td class="td td-category">${ranking.categorys }</td>
									</c:when>

									<%--구독하지 않았을 경우 5개까지만 랭킹 보여주기 --%>
									<c:when
										test="${loginUserBean.subscription eq 'n' && rankPlace <= 5}">
										<td class="td-rankPlace">${rankPlace }</td>
										<td class="td-streamerInfo">
											<div class='rank-streamer'>
												<div class='rank-streamer-info'>
													<img src="img/streamer_profile/${ranking.streamer_image }.png"
														class="table-icon" />


													<c:choose>
														<c:when test="${ranking.streamer_platform eq '유튜브'}">
															<img src="img/leaderBoard/logo_youtube.png"
																class='rank-streamer-info-logo' />
														</c:when>
														<c:when test="${ranking.streamer_platform eq '치지직'}">
															<img src="img/leaderBoard/logo_chzzk.png"
																class='rank-streamer-info-logo' />
														</c:when>
														<c:when test="${ranking.streamer_platform eq '아프리카'}">
															<img src="img/leaderBoard/afreecaTV_logo.png"
																class='rank-streamer-info-logo' />
														</c:when>
													</c:choose>
												</div>
												${ranking.streamer_id }
											</div>
										</td>
										<td class="td td-description">${ranking.streaming_description }</td>

										<td class="td td-avgViewers avgV-bar"
											style="width:${(ranking.avg_viewers / sumAVG) * 100 }%;">${ranking.avg_viewers }</td>

										<td class="td td-likes">
											<div class="likes-div">
												<div class="likes-bar"
													style="width:${(ranking.likes / likesByDate) * 100}%;"></div>
												<div class="likes">${ranking.likes }</div>
											</div>
										</td>
										<td class="td td-dailyViewers">
											<div class="daily-div">
												<div class="daily-bar"
													style="width:${(ranking.daily_viewers / sumDaily) * 100}%;"></div>
												<div class="dailyV">${ranking.daily_viewers }</div>
											</div>
										</td>
										<td class="td td-followers">${ranking.streamer_followers }</td>

										<td class="td td-category">${ranking.categorys }</td>
									</c:when>

								</c:choose>


							</tr>
						</c:forEach>

						<c:if
							test="${loginUserBean.subscription eq 'n' || loginUserBean.userLogin == false}">
							<td colspan=8>
								<div class='blackSpace'>
									<img src='img/leaderBoard/coloredLock.png' class='locked'>
									<div class='plzsub'>구독 후 더 다양한 정보를 확인할 수 있습니다</div>
								</div>
							</td>
						</c:if>

					</tbody>
				</table>
			</div>
		</div>

	</section>


	<c:import url="/view/home_include/footer.jsp" />

</body>
<script src="leaderBoard/filter.js"></script>

<script>
	function loadRankingData() {
		var selectedDate = document.getElementById('streamingDate').value;
		if (!selectedDate) {
			return; // 날짜가 선택되지 않았으면 아무 작업도 수행하지 않습니다.
		}
		window.location.href = "/StreamerSensor0302/leaderBoard?streaming_date="
				+ selectedDate;
	}

</script>
</html>