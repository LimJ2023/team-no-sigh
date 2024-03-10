
-- 회원 테이블--
CREATE TABLE users(
    user_idx NUMBER NOT NULL UNIQUE,
    user_id VARCHAR2(60) PRIMARY KEY,
    user_pw VARCHAR2(60),
    user_name VARCHAR2(60),
    user_gender VARCHAR2(20),
    user_age NUMBER,
    user_nation VARCHAR2(60),
    subscription VARCHAR2(1),
    user_image VARCHAR2(400)
);

--스트리머 테이블--
CREATE TABLE streamer(
    streamer_idx number not null unique,
    streamer_id VARCHAR2(40) PRIMARY KEY,
    streamer_gender VARCHAR2(40),
    streamer_grade VARCHAR2(40),
    streamer_status VARCHAR2(60),
    streamer_platform VARCHAR2(60), 
    streamer_followers NUMBER,
    streamer_image VARCHAR2(400)
);

CREATE TABLE stream_categorys(
    stream_categorys_id NUMBER PRIMARY KEY,
    categorys VARCHAR2(60)
);

--방송 정보 테이블--
CREATE TABLE streaming_info(
    streaming_id NUMBER PRIMARY KEY,
    streaming_description VARCHAR2(60),
    streaming_url VARCHAR2(200),
    streaming_time VARCHAR2(60),
    stream_categorys_id NUMBER,
    streaming_date DATE,
    streamer_id VARCHAR2(60),
    streaming_image VARCHAR2(400),
    FOREIGN KEY (streamer_id) REFERENCES streamer(streamer_id) ON DELETE SET NULL,
    FOREIGN KEY (stream_categorys_id) REFERENCES stream_categorys(stream_categorys_id)
);

--리뷰 테이블--
CREATE table review(
    review_idx NUMBER PRIMARY KEY,
    user_id VARCHAR2(60),
    review_streaming_id NUMBER,
    writing_data VARCHAR2(200),
    likes_count NUMBER,
    review_rating NUMBER,
    review_creation_date DATE,
    FOREIGN KEY(review_streaming_id) REFERENCES streaming_info(streaming_id) ON DELETE SET NULL
);

--리뷰와 사용자의 관계 테이블. (유저id와 리뷰의 id로 각 리뷰를 구별할 수 있도록)--
CREATE TABLE user_review_relation(
    review_idx number,
    user_id VARCHAR2(60),
    FOREIGN KEY (review_idx) REFERENCES review(review_idx),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE SET NULL
);


--선호도 테이블 (유저id와 스트리머id로 유저의 각 스트리머에 대한 선호도를 알 수 있도록)
CREATE TABLE Preferences(
    preferences_idx NUMBER PRIMARY KEY,
    user_id VARCHAR2(60),
    streamer_id VARCHAR2(60),
    review_count NUMBER,
    favorites NUMBER(1,0),
    stream_categorys_id NUMBER,
    FOREIGN KEY(user_id) REFERENCES users(user_id) ON DELETE SET NULL,
    FOREIGN KEY(streamer_id) REFERENCES streamer(streamer_id) ON DELETE SET NULL,
    FOREIGN KEY(stream_categorys_id) REFERENCES stream_categorys(stream_categorys_id)
);

--랭킹 테이블--
CREATE TABLE ranking(
    ranking_id number PRIMARY KEY,
    rank_date DATE, --랭킹 기준일
    rank_place NUMBER, --랭킹 순위
    rank_method varchar2(60),
    streaming_id NUMBER,  --오늘의 선호도에서 가져오기 위한 저장소 고유번호
    FOREIGN KEY(streaming_id) REFERENCES streaming_info(streaming_id) ON DELETE SET NULL
);

--보드 테이블--
CREATE TABLE board(
    board_idx number primary key,
    user_id VARCHAR2(60),
    title varchar2(60),
    info VARCHAR2(200),
    board_date date,
    view_count number,
    comment_count number,
    categorys VARCHAR2(60)
);



--댓글 테이블--
CREATE TABLE comments(
    comments_num NUMBER PRIMARY KEY,
    user_id VARCHAR2(60),
    info VARCHAR2(200),
    comments_date DATE,
    board_idx NUMBER,
    FOREIGN KEY (user_id) REFERENCES USERS(user_id) ON DELETE SET NULL,
    FOREIGN KEY (board_idx) REFERENCES board(board_idx)
);

--admin 테이블--
CREATE TABLE admin(
    admin_id NUMBER PRIMARY KEY,
    admin_name VARCHAR2(60) UNIQUE NOT NULL,
    admin_pw VARCHAR2(100) NOT NULL,
    email VARCHAR2(100),
    admin_image VARCHAR2(400),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP
);

--admin 공지사항 테이블--
create table admin_notice(
    admin_id NUMBER,
    notice_num number primary key,
    notice_type varchar2(60),
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
    site_stat_date VARCHAR2(255)
);

-- 방송 선호도--
CREATE TABLE Streaming_preference(
    avg_viewers NUMBER,
    likes NUMBER,
    comments NUMBER,
    daily_viewers NUMBER,
    streaming_id number PRIMARY KEY,
    FOREIGN KEY(streaming_id) REFERENCES streaming_info(streaming_id) ON DELETE SET NULL
);


--로그인 인포 테이블--
create table login_info_table(
   login_info_idx number constraint login_INFO_PK primary key,
   login_info_name varchar2(500) not null
);

-----사이트 방문자 정보 테이블-----
CREATE TABLE visitor(
    visit_id NUMBER PRIMARY KEY,
    visit_ip VARCHAR2(200) NOT NULL,
    visit_time TIMESTAMP NOT NULL,
    visit_agent VARCHAR2(400) NOT NULL
);

CREATE TABLE streamer_rating(
    comment_id NUMBER PRIMARY KEY,
    user_idx number,
    streamer_idx number,
    streamer_rating number,
    rating_comment VARCHAR2(200),
    streamer_rating_date DATE
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
CREATE SEQUENCE preferences_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    ORDER
    NOCACHE;
CREATE SEQUENCE visitor_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    ORDER
    NOCACHE;
CREATE SEQUENCE streamer_rating_id_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    ORDER
    NOCACHE;


commit;