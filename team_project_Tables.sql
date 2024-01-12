
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
insert into users VALUES(1, 'abcd', '김인직', '남', 40, '한국');
insert into users VALUES(2, '1234', '홍길동', '남성', 30, '한국');
insert into users VALUES(3, '5678', '이지은', '여성', 22, '한국');
insert into users VALUES(4, 'abcd1234', '박철수', '남', 25, '한국');
insert into users VALUES(5, 'pass4321', '김영희', '여성', 35, '한국');

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
INSERT INTO streaming_info VALUES(1, '발로란트 배치고사', null,'1시간','게임','2024-01-11',1);


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


--스트리머의 방송 기록 저장 테이블--
DROP TABLE streaming_storage;
CREATE TABLE streaming_storage(
    storage_id number PRIMARY KEY,
    STRM_ID number,
    FOREIGN KEY(STRM_ID) REFERENCES Streamer(STRM_ID)
);

INSERT INTO streaming_storage VALUES(1,100);
insert into Streaming_preference VALUES(5,3,1,10,15,1);


--임요한이 한 방송제목,날짜, 리뷰내용,점수,리뷰작성날짜 출력
select s.strm_name, i.streaming_desc, i.streaming_date, 
    r.writing_data, r.review_rating, r.review_creation_date
FROM streamer s
INNER JOIN streaming_storage st on s.strm_id = st.strm_id
INNER JOIN streaming_info i on i.storage_id = st.storage_id
INNER JOIN review r on r.review_content_id = i.streaming_id;

select u.user_name, r.writing_data, r.review_creation_date
from review r
INNER JOIN users u on r.user_id = u.user_id;
