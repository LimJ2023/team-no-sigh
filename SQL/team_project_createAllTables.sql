
-- 회원 테이블--
CREATE TABLE users(
    user_idx NUMBER NULL UNIQUE,
    user_id VARCHAR2(20) PRIMARY KEY,
    user_pw VARCHAR2(20),
    user_name VARCHAR2(20),
    user_gender VARCHAR2(20),
    user_age NUMBER,
    user_nation VARCHAR2(20),
    subscription VARCHAR2(1)
);

--스트리머 테이블--
CREATE TABLE streamer(
    streamer_idx number not null unique,
    streamer_id VARCHAR2(40) PRIMARY KEY,
    streamer_gender VARCHAR2(20),
    streamer_grade VARCHAR2(20),
    streamer_status VARCHAR2(20),
    streamer_platform VARCHAR2(20), 
    streamer_followers number,
    streamer_img number
);

--방송 썸네일(이미지) 테이블--
CREATE TABLE streaming_img(
    img_id NUMBER PRIMARY KEY,
    img_url VARCHAR2(255) NOT NULL
);

--방송 정보 테이블--
CREATE TABLE streaming_info(
    streaming_id NUMBER PRIMARY KEY,
    streaming_description VARCHAR2(60),
    streaming_url VARCHAR2(60),
    streaming_time VARCHAR2(60),
    streaming_category VARCHAR2(40),
    streaming_date DATE,
    streamer_id VARCHAR2(20),
    img_id NUMBER
);

--리뷰 테이블--
CREATE table review(
    review_idx NUMBER PRIMARY KEY,
    user_id VARCHAR2(20),
    review_streaming_id NUMBER,
    writing_data VARCHAR2(200),
    likes_count NUMBER,
    review_rating NUMBER,
    review_creation_date DATE,
    FOREIGN KEY(review_streaming_id) REFERENCES streaming_info(streaming_id)
);

--리뷰와 사용자의 관계 테이블. (유저id와 리뷰의 id로 각 리뷰를 구별할 수 있도록)--
CREATE TABLE user_review_relation(
    review_idx number,
    user_id VARCHAR2(60),
    FOREIGN KEY (review_idx) REFERENCES review(review_idx),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

--선호도 테이블 (유저id와 스트리머id로 유저의 각 스트리머에 대한 선호도를 알 수 있도록)
CREATE TABLE Preferences(
    user_id VARCHAR2(40),
    streamer_id VARCHAR2(40),
    watch_time NUMBER,
    chat_count NUMBER,
    donation_amount NUMBER,
    favorites NUMBER(1,0),
    PRIMARY KEY(user_id, streamer_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(streamer_id) REFERENCES streamer(streamer_id)
);

--랭킹 테이블--
CREATE TABLE ranking(
    ranking_id number PRIMARY KEY,
    rank_date DATE, --랭킹 기준일
    rank_place NUMBER, --랭킹 순위
    rank_method varchar2(20),
    streaming_id NUMBER,  --오늘의 선호도에서 가져오기 위한 저장소 고유번호
    FOREIGN KEY(streaming_id) REFERENCES streaming_info(streaming_id)
);

--보드 테이블--
CREATE TABLE board(
    board_idx number primary key,
    user_id VARCHAR2(20),
    title varchar2(20),
    info VARCHAR2(200),
    board_date date,
    view_count number,
    comment_count number,
    tags VARCHAR2(20),
    FOREIGN KEY (user_id) REFERENCES USERS(user_id)
);

--댓글 테이블--
CREATE TABLE comments(
    comments_num NUMBER PRIMARY KEY,
    user_id VARCHAR2(20),
    info VARCHAR2(200),
    comments_date DATE,
    board_idx NUMBER,
    FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    FOREIGN KEY (board_idx) REFERENCES board(board_idx)
);

--admin 테이블--
CREATE TABLE admin(
    admin_id NUMBER PRIMARY KEY,
    admin_name VARCHAR2(50) UNIQUE NOT NULL,
    admin_pw VARCHAR2(100) NOT NULL,
    email VARCHAR2(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP
);

--admin 공지사항 테이블--
create table admin_notice(
    admin_id NUMBER,
    notice_num number primary key,
    notice_type varchar2(20),
    notice_title varchar2(80),
    notice_content varchar2(400),
    notice_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    foreign key (admin_id) REFERENCES admin(admin_id)
);

--사이트 운영 통계 테이블--
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

-- 오늘의 방송 선호도--
CREATE TABLE Streaming_preference(
    avg_viewers NUMBER,
    likes NUMBER,
    comments NUMBER,
    daily_viewers NUMBER,
    streaming_id number PRIMARY KEY,
    FOREIGN KEY(streaming_id) REFERENCES streaming_info(streaming_id)
);


------레코드를 추가할 때마다 idx 값이 1 늘어나게 하는 시퀀스-------------

CREATE SEQUENCE record_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NOCACHE;
CREATE SEQUENCE review_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    ORDER
    NOCACHE;
CREATE SEQUENCE streaming_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    ORDER
    NOCACHE;
CREATE SEQUENCE admin_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    ORDER
    NOCACHE;
--공지사항 테이블 고유번호 시퀀스 생성
CREATE SEQUENCE notice_num_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    ORDER
    NOCACHE;
CREATE SEQUENCE streamer_idx_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    ORDER
    NOCACHE;
create sequence users_seq
    start with 0
    increment by 1
    minvalue 0
    ORDER
    NOCACHE;
CREATE SEQUENCE board_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NOCACHE;
CREATE SEQUENCE ranking_id_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    ORDER
    NOCACHE;
----히스토리 테이블--(0229.잠시 보류 테이블)
--CREATE TABLE history (
--    history_num number primary key,
--    history_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --히스토리 생성일자
--    notice_num number, --공지사항 갯수
--    comments_num number, --댓글 갯수
--    board_num number, --게시판 글 수
--    review_idx number, --총 리뷰 수
--    streamer_idx number, --스트리머 수 보류
--    foreign key (notice_num) REFERENCES admin_notice(notice_num), --ok
--    foreign key (comments_num) REFERENCES comments (comments_num), --ok
--    foreign key (board_num) REFERENCES board (board_num), --ok
--    foreign key (review_idx) REFERENCES review (review_idx), --ok
--    foreign key (streamer_idx) REFERENCES streamer (streamer_idx)
--);


commit;