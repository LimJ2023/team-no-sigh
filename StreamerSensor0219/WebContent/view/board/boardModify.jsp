<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>

<link rel="stylesheet" href="boardViewStyle.css">
<link rel="stylesheet" href="swiper-bundle.min.css">
        <!--     Fav icon -->
        <link rel="shortcut icon" href="../img/fav-icon.png" type="image/x-icon">
        <!-- box icons -->
        <link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
            rel="stylesheet">
        
        <title>Streamer Sensor</title>
        </head>
        <body>
            <p>test 03</p>
            <!-- header -->
            <header>
                <!-- nav -->
                <div class="nav container">
                    <!-- logo -->
                    <a href="home" class="logo"> Streamer<span>Sensor</span>
                    </a>
                    <!-- search box (검색)-->
                    <div class="search-box">
                        <input type="search" name="" id="search-input"
                            placeholder="Search streamer"> <i class='bx bx-search'></i>
                    </div>
                    <!-- user 사진 제대로 찾아서 넣어야함 (여기는 마이페이지랑 로그인되는 버튼구현)-->
                    <a href="../login/html.html" class="user"> <img
                        src="img/Person_Icon.png" alt="" class="user-img">
                    </a>
                    

                    <div class="navbar">
                        <a href="home" class="nav-link nav-active"> <i
                            class='bx bx-home'></i> <span class="nav-link-title">home</span>
                        </a> <a href="trend" class="nav-link"> <i
                            class='bx bxs-hot'></i> <span class="nav-link-title">trending</span>
                        </a> <a href="leaderBoard" class="nav-link"> <i
                            class='bx bx-bar-chart-alt-2'></i> <span class="nav-link-title">leaderBoard</span>
                        </a> <a href="board" class="nav-link">
                            <i class='bx bx-message-detail'></i> <span class="nav-link-title">community</span>
                        </a> <a href="#home" class="nav-link"> <i class='bx bx-news'></i> <span
                            class="nav-link-title">news</span>
                        </a> <a href="admin" class="nav-link"> <i
                            class='bx bx-wrench'></i> <span class="nav-link-title">관리자페이지
                                진입 버튼1</span>
                        </a>
                    </div>
                    
                    
                </div>
            </header>


	<section class="board-Modify-section">
			<div class="board-Modify-div">
				<form action="${root }board/read" method="get">
					<div class="form-group">
						<label for="board_writer_name">작성자</label> <input type="text"
							id="board_writer_name" name="board_writer_name"
							class="form-control" value="홍길동" disabled="disabled" />
					</div>
					<div class="form-group">
						<label for="board_date">작성날짜</label> <input type="text"
							id="board_date" name="board_date" class="form-control"
							value="2018-7-20" disabled="disabled" />
					</div>
					<div class="form-group">
						<label for="board_subject">제목</label> <input type="text"
							id="board_subject" name="board_subject" class="form-control"
							value="제목입니다" />
					</div>
					<div class="form-group">
						<label for="board_content">내용</label>
						<textarea id="board_content" name="board_content"
							class="form-control" rows="10" style="resize: none">본문입니다</textarea>
					</div>
					<div class="form-group">
						<label for="board_file">첨부 이미지</label> <img
							src="${root }image/logo.png" width="100%" /> <input type="file"
							name="board_file" id="board_file" class="form-control"
							accept="image/*" />
					</div>
					<div class="form-group">
						<div class="text-right">
							<button type="submit" class="btn btn-primary">수정완료</button>
							<a href="${root }board/read" class="btn btn-info">취소</a>
						</div>
					</div>
				</form>
			</div>
	</section>

	<section class="board-bottom-menu-section">
                <div class="board-bottom-menu">
                    <div class="board-bottom-menu-div1">
                        <button type="button" class="board-menu-button button-list">목록으로</button>
                    </div>
                    <div class="board-bottom-menu-div2">
                        <button type="button" class="board-menu-button button-edit">수정하기</button>
                        <button type="button" class="board-menu-button button-delete">삭제하기</button>
                    </div>
                </div>
            </section>

</body>
</html>