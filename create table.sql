--계정 만들기
--MD_SYSTEM 으로 순서대로 진행 :
ALTER SESSION SET "_ORACLE_SCRIPT"=true;

CREATE USER streamer IDENTIFIED BY 12345;


GRANT CONNECT, RESOURCE TO streamer;
GRANT CREATE VIEW, CREATE SEQUENCE, CREATE PROCEDURE TO streamer;

ALTER USER streamer DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

--이후 왼쪽 "접속" 패널에서 초록색 + 클릭
--Name : streamer
--사용자 이름 : streamer
--비밀번호 : 12345 [비밀번호 저장 체크]
--테스트 -> 성공 확인 후 접속

-------------------------------------------------
-- user 테이블
DROP TABLE USERS;
CREATE TABLE users(
    user_num number not null UNIQUE,
    user_id VARCHAR2(20),
    user_pw VARCHAR2(20),
    user_name VARCHAR2(20),
    user_gender VARCHAR2(20),
    user_age number,
    user_nation VARCHAR2(20),
    subscription varchar2(1),
    PRIMARY KEY(user_id)
);

--스트리머 테이블--
DROP TABLE streamer;
CREATE TABLE streamer(
    streamer_num number not null unique,
    streamer_id VARCHAR2(40) PRIMARY KEY,
    streamer_gender VARCHAR2(20),
    streamer_grade VARCHAR2(20),
    streamer_status VARCHAR2(20),
    streamer_platform VARCHAR2(20), 
    streamer_followers number
);

--오늘 방송 정보 테이블--
drop table streaming_info;
CREATE TABLE streaming_info(
streaming_id number PRIMARY KEY,
streaming_description VARCHAR2(60),
streaming_url VARCHAR2(60),
streaming_time VARCHAR2(60),
streaming_category VARCHAR2(40),
streaming_date Date,
streamer_id VARCHAR2(20),
FOREIGN KEY(streamer_id) references streamer(streamer_id)
);

ALTER TABLE streaming_info ADD img_id number;
ALTER TABLE streaming_info ADD CONSTRAINT FK_streaming_img 
    FOREIGN KEY (img_id) references streaming_img (img_id);
    
--방송에 들어갈 이미지 테이블--
drop table streaming_img;
CREATE TABLE streaming_img(
    img_id number primary key,
    img_url varchar2(255) not null
);

--리뷰 테이블--
DROP TABLE review;
CREATE table review(
    review_num number PRIMARY KEY,
    user_id VARCHAR2(40),
    review_streaming_id number,
    writing_data VARCHAR2(200),
    likes_count number,
    review_rating NUMBER,
    review_creation_date DATE,
    FOREIGN KEY(review_streaming_id) REFERENCES streaming_info(streaming_id)
);

--리뷰와 사용자의 관계 테이블. (유저id와 리뷰의 id로 각 리뷰를 구별할 수 있도록)--
DROP TABLE user_review_relation;
CREATE TABLE user_review_relation(
    review_num number,
    user_id VARCHAR2(20),
    PRIMARY KEY (review_num, user_id),
    FOREIGN KEY (review_num) REFERENCES review(review_num),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

--선호도 테이블 (유저id와 스트리머id로 유저의 각 스트리머에 대한 선호도를 알 수 있도록)
DROP TABLE Preferences;
CREATE TABLE Preferences(
    user_id VARCHAR2(40),
    streamer_id VARCHAR2(40),
    watch_time number,
    chat_count number,
    donation_amount number,
    favorites number(1,0),
    PRIMARY KEY(user_id, streamer_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(streamer_id) REFERENCES streamer(streamer_id)
);

-- 오늘의 방송 선호도--
DROP TABLE Streaming_preference;
CREATE TABLE Streaming_preference(
    avg_viewers NUMBER,
    likes NUMBER,
    comments NUMBER,
    daily_viewers NUMBER,
    streaming_id number PRIMARY KEY,
    FOREIGN KEY(streaming_id) REFERENCES streaming_info(streaming_id)
);

--랭킹 테이블--
DROP TABLE ranking;
CREATE TABLE ranking(
    ranking_id number PRIMARY KEY,
    rank_date DATE, --랭킹 기준일
    rank_place NUMBER, --랭킹 순위
    rank_method varchar2(20),
    streaming_id NUMBER,  --오늘의 선호도에서 가져오기 위한 저장소 고유번호
    FOREIGN KEY(streaming_id) REFERENCES streaming_info(streaming_id)
);

--보드 테이블--
DROP TABLE board;
CREATE TABLE board(
    board_num number primary key,
    user_id VARCHAR2(20),
    title varchar2(20),
    info VARCHAR2(200),
    board_date date,
    view_count number,
    comment_count number,
    tags VARCHAR2(20),
    FOREIGN KEY (user_id) REFERENCES USERS(user_id)
);

--comments 테이블--
drop TABLE comments;
create table comments(
    comments_num number primary key,
    user_id VARCHAR2(20),
    info VARCHAR2(200),
    comments_date date,
    board_num number,
    FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    FOREIGN KEY (board_num) REFERENCES board(board_num)
);

--admin 테이블--
drop TABLE admin;
CREATE TABLE admin(
    admin_id NUMBER PRIMARY KEY,
    admin_name VARCHAR2(50) UNIQUE NOT NULL,
    admin_pw VARCHAR2(100) NOT NULL,
    email VARCHAR2(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP
);

--admin 공지사항 테이블--
drop table admin_notice;
create table admin_notice(
    notice_num number primary key,
    notice_type varchar2(10),
    notice_title varchar2(80),
    notice_content varchar2(400),
    notice_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    admin_id NUMBER,
    foreign key (admin_id) REFERENCES admin(admin_id)    
);

--사이트 운영 통계 테이블--
DROP TABLE site_stat;
CREATE TABLE site_stat (
    stat_id NUMBER PRIMARY KEY,
    visit_count NUMBER,
    page_views NUMBER,
    day_revenue NUMBER,
    total_revenue NUMBER,
    new_members NUMBER,
    total_members NUMBER,
    browser_stats VARCHAR2(255),
    security_events VARCHAR2(255),
    server_monitoring VARCHAR2(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

    --new_members NUMBER, --신규 유저 수 보류
    --total_members NUMBER, --전체 유저 수 보류
    --visit_count NUMBER, --방문자 수 보류
    --foreign key (new_members) REFERENCES site_stat (new_members), 
    --foreign key (total_members) REFERENCES site_stat (total_members),
    --foreign key (visit_count) REFERENCES site_stat (visit_count)
--히스토리 테이블--
drop table history;
create table history(
    history_num number primary key,
    history_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --히스토리 생성일자
    notice_num number, --공지사항 갯수
    comments_num number, --댓글 갯수
    board_num number, --게시판 글 수
    review_num number, --총 리뷰 수
    streamer_num number, --스트리머 수 보류
    foreign key (notice_num) REFERENCES admin_notice(notice_num), --ok
    foreign key (comments_num) REFERENCES comments (comments_num), --ok
    foreign key (board_num) REFERENCES board (board_num), --ok
    foreign key (review_num) REFERENCES review (review_num), --ok
    foreign key (streamer_num) REFERENCES streamer (streamer_num) --?
);

insert into history (history_num, notice_num, comments_num, board_num,
review_num, streamer_num) values (1, 20, 1, 1, 714, 100);

update history set history_num = 4;

insert into comments values (20, 'dmstn', '뭐함', '2024-01-11', 1);
insert into board values (1, 'dmstn', 'ㅇㅇ', 'ㄴㅁ', '2024-01-11', 1, 1, 'ㄴㄴ');

select * from history;
select * from admin_notice;
select * from users;
select * from board;
select * from review;
select * from streamer;
select * from comments;