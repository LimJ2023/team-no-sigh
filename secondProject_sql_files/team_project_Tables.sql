
--유저 테이블--
DROP TABLE USERS;
CREATE TABLE users(
    user_id number PRIMARY KEY,
    user_pw VARCHAR2(20),
    user_name VARCHAR2(20),
    user_gen VARCHAR2(20),
    user_age number,
    user_na VARCHAR2(20)
);


select * from users;

--리뷰 테이블--
DROP TABLE review;
CREATE table review(
    review_id number PRIMARY KEY,
    user_id number,
    likes_count number,
    review_content_id number,
    Writing_Data VARCHAR2(100),
    review_rating VARCHAR2(20),
    review_Creation_Date DATE,
    FOREIGN KEY(review_content_id) REFERENCES streaming_info(streaming_id)
);

select * from streaming_info;
select * from review;
INSERT INTO review values(1,1,0,1,'재밌게봤습니다.','10점','2024-11-12');


--리뷰와 사용자의 관계 테이블. (유저id와 리뷰의 id로 각 리뷰를 구별할 수 있도록)--
DROP TABLE user_review_relation;
CREATE TABLE user_review_relation(
    review_id number,
    user_id number,
    PRIMARY KEY (review_id, user_id),
    FOREIGN KEY (review_id) REFERENCES review(review_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);


--스트리머 테이블--
DROP TABLE streamer;
CREATE TABLE streamer(
    strm_id number PRIMARY KEY,
    strm_name VARCHAR2(20),
    strm_Gender VARCHAR2(20),
    strm_grade VARCHAR2(20),
    strm_status VARCHAR2(20),
    strm_Platform VARCHAR2(20), 
    strm_Followers number
);


--선호도 테이블 (유저id와 스트리머id로 유저의 각 스트리머에 대한 선호도를 알 수 있도록)
DROP TABLE Preferences;
CREATE TABLE Preferences(
    user_id number,
    strm_id number,
    watch_time number,
    chat_count number,
    donation_amount number,
    favorites number(1,0),
    PRIMARY KEY(user_id, strm_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(strm_id) REFERENCES streamer(strm_id)
);

INSERT INTO streamer VALUES(100,'임요한','여','실버','활성','유튜브',5);
INSERT INTO Preferences VALUES(1,100,1,10,1000,1);


--오늘 방송 정보 테이블--
drop table streaming_info;
CREATE TABLE streaming_info(
streaming_id number PRIMARY KEY,
streaming_desc VARCHAR2(60),
streaming_url VARCHAR2(60),
streaming_time VARCHAR2(60),
streaming_category VARCHAR2(40),
streaming_date Date,
storage_id NUMBER,
FOREIGN KEY(storage_id) REFERENCES streaming_storage(storage_id)
);
select * from streaming_info;

--스트리머의 방송 기록 저장 테이블--
DROP TABLE streaming_storage;
CREATE TABLE streaming_storage(
    storage_id number PRIMARY KEY,
    STRM_ID number,
    FOREIGN KEY(STRM_ID) REFERENCES Streamer(STRM_ID)
);

INSERT INTO streaming_storage VALUES(1,100);
INSERT INTO streaming_info VALUES(1, '발로란트 배치고사', null,'1시간','게임','2024-01-11',1);
INSERT INTO streaming_info VALUES(2, '발로란트 배치2일차', null,'1시간','게임','2024-01-12',1);
INSERT INTO streaming_info VALUES(3, '코딩방송', null,'3시간','공부','2024-01-13',1);
select * from streaming_storage;
select * from streaming_info;


-- 오늘의 방송 선호도--
DROP TABLE Streaming_preference;
CREATE TABLE Streaming_preference(
    avg_viewers NUMBER,
    likes NUMBER,
    comments NUMBER,
    max_viewers NUMBER,
    daily_viewers NUMBER,
    storage_id number PRIMARY KEY,
    FOREIGN KEY(storage_id) REFERENCES streaming_storage(storage_id)
);
insert into Streaming_preference VALUES(5,3,1,10,15,1);


--랭킹 테이블--
DROP TABLE ranking;
CREATE TABLE ranking(
    ranking_id number PRIMARY KEY,
    rank_date DATE, --랭킹 기준일
    rank_place NUMBER, --랭킹 순위
    rank_method varchar2(20),
    STRM_id NUMBER,  --오늘의 선호도에서 가져오기 위한 저장소 고유번호
    FOREIGN KEY(STRM_id) REFERENCES STREAMER(STRM_id)
);
INSERT INTO ranking VALUES(1,'2024-01-11',1,'평균시청자수',100);
SELECT * FROM ranking;
--2024-1월-11월의 방송의 순위, 스트리머 이름
SELECT r.rank_date 날짜, r.rank_place 순위, r.rank_method 집계방식, s.strm_name 이름
FROM RANKING R
INNER JOIN STREAMER s on r.strm_id = s.strm_id
where rank_date = '2024-01-11'
and rank_place between 1 and 3;


--임요한이 한 방송제목,날짜, 리뷰내용,점수,리뷰작성날짜 출력
select s.strm_name, i.streaming_desc, i.streaming_date, 
    r.writing_data, r.review_rating, r.review_creation_date
FROM streamer s
INNER JOIN streaming_storage st on s.strm_id = st.strm_id
INNER JOIN streaming_info i on i.storage_id = st.storage_id
INNER JOIN review r on r.review_content_id = i.streaming_id;

-----리뷰작성자,작성내용,날짜 출력
select u.user_name, r.writing_data, r.review_creation_date
from review r
INNER JOIN users u on r.user_id = u.user_id;
