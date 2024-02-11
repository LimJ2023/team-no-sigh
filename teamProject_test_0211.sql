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

--테이블[streamer 계정으로 진행]
DROP TABLE USERS;
CREATE TABLE users(
    user_num number not null UNIQUE,
    user_id VARCHAR2(20),
    user_pw VARCHAR2(20),
    user_name VARCHAR2(20),
    user_gen VARCHAR2(20),
    user_age number,
    user_na VARCHAR2(20),
    PRIMARY KEY(user_id)
);


--스트리머 테이블--
DROP TABLE streamer;
CREATE TABLE streamer(
    strm_num number not null unique,
    strm_id VARCHAR2(40) PRIMARY KEY,
    strm_Gender VARCHAR2(20),
    strm_grade VARCHAR2(20),
    strm_status VARCHAR2(20),
    strm_Platform VARCHAR2(20), 
    strm_Followers number
);


--오늘 방송 정보 테이블--
drop table streaming_info;
CREATE TABLE streaming_info(
streaming_id number PRIMARY KEY,
streaming_desc VARCHAR2(60),
streaming_url VARCHAR2(60),
streaming_time VARCHAR2(60),
streaming_category VARCHAR2(40),
streaming_date Date,
strm_id VARCHAR2(20),
FOREIGN KEY(strm_id) references streamer(strm_id)
);




--리뷰 테이블--
DROP TABLE review;
CREATE table review(
    review_num number PRIMARY KEY,
    user_id VARCHAR2(40),
    review_streaming_id number,
    Writing_Data VARCHAR2(200),
    likes_count number,
    review_rating NUMBER,
    review_Creation_Date DATE,
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
    strm_id VARCHAR2(40),
    watch_time number,
    chat_count number,
    donation_amount number,
    favorites number(1,0),
    PRIMARY KEY(user_id, strm_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(strm_id) REFERENCES streamer(strm_id)
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

DROP TABLE board;
CREATE TABLE board(
    board_num number primary key,
    user_id VARCHAR2(20),
    title varchar2(20),
    info VARCHAR2(200),
    board_Date date,
    view_count number,
    comment_count number,
    tags VARCHAR2(20),
    FOREIGN KEY (user_id) REFERENCES USERS(user_id)
);

drop TABLE comments;
create table comments(
    cmt_num number primary key,
    user_id VARCHAR2(20),
    info VARCHAR2(200),
    cmt_Date date,
    board_num number,
    FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    FOREIGN KEY (board_num) REFERENCES board(board_num)
);

drop TABLE admin;
CREATE TABLE admin(
    admin_id NUMBER PRIMARY KEY,
    admin_name VARCHAR2(50) UNIQUE NOT NULL,
    admin_pw VARCHAR2(100) NOT NULL,
    email VARCHAR2(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP
);


----------------------------------------------------------------------

--더미데이터 [streamer 로 진행]
--<<더미데이터>> 

--<<샘플(100번) 제외 스트리머 추가>>--
INSERT INTO streamer VALUES(100,'임요한','여','실버','활성','유튜브',5);

insert into streamer VALUES(101, '빅헤드', '남성', '골드', '온라인', '치지직', 1230);
insert into streamer values(102, '가방송', '남', '골드', '활성', '치지직', 203);
INSERT INTO streamer VALUES(103,'선수탐구','남', '플래티넘','비활성','유튜브',30);
insert into streamer values(104, '더 월드', '남성', '플래티나', '오프라인', '유튜브', 100000);
INSERT INTO streamer VALUES(105, '임방송인', '여', '브론즈', '비활성', '유튜브', 23);

--insert into streamer values(106, '더 월드', '남성', '플래티나', '오프라인', '유튜브', 100000);
--↑무결성 위배로 인해 스킵

insert into streamer values(107, '올라프', '남성', '골드', '오프라인', '유튜브', 50000);
insert into streamer values(108, '케인', '남성', '플래티넘', '온라인', '유튜브', 2000000);

SELECT * FROM streamer;

--<<사용자 정보 추가>>

SELECT * FROM users;

--2024-02-08 이지수 : 
--테이블 수정으로 인해 임의의 값 추가
--(user_pw)가 추가되어 각 값에 'pw' 추가
--7번 id 가 5번과 겹쳐 asdf -> asdf2 로 변경
--!드래그 ->ctrl+enter로는 한 번에 10개까지밖에 안들어가는 것 같?음?

insert into users VALUES(1,'abcd','pw1', '김인직','남',40,'한국');
insert into users VALUES(2,'dmstn','pw2', '임요한','남',25,'한국');
insert into users VALUES(3,'location','pw3', '이지수','여',24,'한국');
insert into users VALUES(4,'id','pw4', '최민기','남',23,'한국');
insert into users VALUES(5,'asdf','pw5', '박현수','남',22,'한국');

insert into users values(6, 'qwer','pw6', '가시청' , '남', 23, '한국');
insert into users values(7, 'asdf2','pw7', '나시청' , '여', 24, '한국');
insert into users values(8, 'zxcv','pw8', '다시청' , '남', 25, '한국');
insert into users values(9, 'tyui','pw9', '라시청' , '여', 26, '한국');
insert into users values(10, 'ghjk','pw10', '마시청' , '남', 27, '한국');

INSERT INTO users VALUES(11, 'jonsuk','pw11', '이종석', '남', 32, '한국');
INSERT INTO users VALUES(12, 'iu','pw12', '아이유', '여', 30, '한국');
INSERT INTO users VALUES(13, 'ubin','pw13', '김우빈', '남', 33, '한국');
INSERT INTO users VALUES(14, 'mina','pw14', '신민아', '여', 35, '한국');
INSERT INTO users VALUES(15, 'gamst','pw15', '감스트', '남', 36, '한국');

insert into users values(16,'deep','pw16', '반 다크홈','남',40,'미국');
insert into users values(17,'snow','pw17','예카','여',23,'러시아');
insert into users values(18,'ddewr','pw18','죠지','남',40,'영국');
insert into users values(19,'deew','pw19','유카','여',24,'일본');
insert into users values(20,'de35','pw20','안쭈이','여',40,'중국');

INSERT INTO users VALUES(21, 'psswrd','pw21', '장은우', '남', 24, '한국');
INSERT INTO users VALUES(22, 'qlalfqjsgh','pw22', '임도윤', '남', 19, '한국');
INSERT INTO users VALUES(23, '123098','pw23', '장지우', '남', 21, '한국');
INSERT INTO users VALUES(24, '995884','pw24', '장서연', '여', 27, '한국');
INSERT INTO users VALUES(25, 'dkssud','pw25', '정도윤', '여', 20, '한국');

--=======================================


--<<저장소 추가 + 방송 정보 추가>>


--2024-02-08 이지수 :  
-- 1월 12?일 정도에 storage는 사용하지 않기로 테이블 제작을 멈추었던 것 같음.
-- strm_num 말고 strm_id로 변경되었음 -> 각 값(마지막) 숫자에서 아이디로 변경

SELECT * FROM streaming_info;


insert into streaming_info values (2, '타르코프 초기화', 'http://www.youtube.com', '7시간 12분', '게임', '2024-01-09', '임요한');
insert into streaming_info values (3, '자낳대 대회', 'http://www.youtube.com', '4시간 30분', '게임', '2024-01-08', '임요한');
insert into streaming_info values (4, '레식 시즈킹 대회', 'http://www.youtube.com', '6시간 29분 25초', '게임', '2024-01-07', '임요한');


--이지수(임방송인(105)

INSERT INTO streaming_info VALUES(11, '코딩하기싫다', 'youtube.com', '1시간 52분', '수다', '2024-01-08', '임방송인');
INSERT INTO streaming_info VALUES(12, '코딩노잼이에요', 'afreecatv.com', '2시간 22분', '수다', '2024-01-10',  '임방송인');
INSERT INTO streaming_info VALUES(13, '자유를 찾았어요', 'youtube.com', '4시간 22분', '게임', '2024-01-11',  '임방송인');


--20240210 이지수 : 선수탐구 스킵됨//무결성 제약조건... 아마 strm_id 중복때문인듯
SELECT * FROM streamer;
--진훈님 (선수탐구(103)

INSERT INTO streaming_info VALUES(8,'손흥민이 이적을 할까', 'youtube.com','24시간 50분','축구','2024-01-11', '선수탐구');
INSERT INTO streaming_info VALUES(9,'황희찬이 이적을 할까', 'youtube.com','26시간 51분','축구','2024-01-12', '선수탐구');
INSERT INTO streaming_info VALUES(10,'이강인이 이적을 할까', 'youtube.com','30시간 23분','축구','2024-01-13', '선수탐구');


--민기님 (가방송(102)

insert into streaming_info values(5, '로아 카멘 트라이', null, '8시간', '게임', '2024-01-12', '빅헤드');
insert into streaming_info values(6, '로아 브레이커 세팅', null, '5시간', '게임', '2024-01-13', '빅헤드');
insert into streaming_info values(7, '로아 에스더 선언', null, '2시간', '게임', '2024-01-12', '빅헤드');

--현수님(더월드 104)

INSERT INTO streaming_info VALUES(14, '12시간 동안 게임해서 미쳐버림', 'https://www.youtube.com/',
    '12시간', '록맨 시리즈', '2024-01-02', '더 월드');
INSERT INTO streaming_info VALUES(15, '난 바다의 제왕 형세이돈이시다', 'https://www.youtube.com/',
    '3시간', '리그 오브 레전드', '2024-01-04', '더 월드');
INSERT INTO streaming_info VALUES(16, '추억의 게임 KOF98', 'https://www.youtube.com/',
    '3시간', 'KOF 98', '2024-01-03','더 월드');
    



--<<리뷰 넣기>>

SELECT * FROM review;
SELECT * FROM streaming_info;
SELECT * FROM users;

--2024-02-08 이지수 :
--streaming_ID가 변경이 되었는지 맞지 않아서 바꿈
--2024-02-10 이지수 :
    --user_id 가 아니라 num으로 되어있던 것 같은데 테이블이 변경되며 id 는 VARCHAR라 맞게 임의 변경
--streaming_id 앞 값을 lieks_count 위치로 변경
--review_rating이 varchar에서 number로 변경된 것 같아 수정

--민기님(5~7방송)
insert into review values(714, 'psswrd', 5, '재밌다', 3, 10, '2024-01-13');
insert into review values(715, 'qlalfqjsgh', 6, '꿀잼',10, 8, '2024-01-13');
insert into review values(716, '123098', 7, '나쁘지 않음', 7, 4, '2024-01-13');
insert into review values(717, '995884', 7, '노잼', 25, 2, '2024-01-13');
insert into review values(718, 'dkssud', 8, '볼만해요', 9, 5, '2024-01-13');

--진훈님(8~10방송)
INSERT INTO review VALUES(10,'gamst',8,'노잼이에요.',100,1,'2024-01-12');
INSERT INTO review VALUES(11,'deep',9,'지루해요',50,2,'2024-01-11');
INSERT INTO review VALUES(12,'snow',9,'재밌어요',60,10,'2024-01-13');
INSERT INTO review VALUES(14,'snow',10,'너무 웃겨요',80,9,'2024-01-12');
INSERT INTO review VALUES(13,'ddewr',10,'슬퍼요',99,4,'2024-01-11');


--이지수(11~13방송)
INSERT INTO review VALUES(57, 'psswrd', 11, '그냥저냥볼만하네요', 142, 6, '2024-01-09');
INSERT INTO review VALUES(58, 'qlalfqjsgh', 12, '재밌워요', 72, 8, '2024-01-09');
INSERT INTO review VALUES(59, 'qlalfqjsgh', 12, '졸려요', 102, 4, '2024-01-10');
INSERT INTO review VALUES(60, '123098', 13, '드디어재밌네', 61, 10, '2024-01-11');
INSERT INTO review VALUES(61, '995884', 13, '하던거해', 15, 2, '2024-01-11');

SELECT * FROM review;

SELECT * FROM tab;

--<<선호도 입력하기>>

--이지수(스토리지 7)
--240210 이지수 : 스토리지삭제로 인한 값 수 변경 
                

SELECT * FROM streaming_preference;
SELECT * FROM streaming_info;
INSERT INTO streaming_preference VALUES(35, 70, 102, 65, 11);

SELECT * FROM streaming_preference;


--streaming_storage 삭제로 인해 사용 불가능 하게 되었음
select d.streaming_desc 방제, s.strm_name 스트리머이름, d.streaming_date 방송일자
from streamer s
INNER JOIN streaming_storage st on st.strm_id = s.strm_id
inner join streaming_info d on d.storage_id = st.storage_id;


--<<랭킹넣기>>

--240210 이지수 : streaming_id 수치 변경으로 인해 맞춰서 임의로 변경 (100번대 에서 0~00번대로 맞춰줌)

INSERT INTO ranking VALUES(1, '2024-01-09', 1, 'dailyViewer', 2);
INSERT INTO ranking VALUES(5, '2024-01-09', 1, 'dailyViewer', 2);
INSERT INTO ranking VALUES(2, '2024-01-09', 3, 'dailyViewer', 4);
INSERT INTO ranking VALUES(3, '2024-01-09', 2, 'dailyViewer', 11);
INSERT INTO ranking VALUES(4, '2024-01-09', 4, 'dailyViewer', 7);

INSERT INTO ranking VALUES(15, '2024-01-10', 1, 'dailyViewer', 7);
INSERT INTO ranking VALUES(16, '2024-01-10', 2, 'dailyViewer', 8);

INSERT INTO ranking VALUES(27, '2024-01-11', 1, 'dailyViewer', 2);




--240210 이지수 : streamer_id와 streaming_id 나누기로 인해 오류 발생 - strm_id 를streaming_id 로 바꾸고
    --streamer와 INNER JOIN 추가 해서 출력
SELECT * FROM streamer;
SELECT * FROM ranking;
SELECT * FROM streaming_info;


--240210 이지수 : 하단 출력쿼리들도 진행 안되는데 나중에 해보겠습니다
--방송 순위, 스트리머 이름, 플랫폼, 랭크날짜
SELECT r.rank_place 순위, si.strm_id 스트리머, s.strm_platform 플랫폼, r.rank_date 랭크인날짜
FROM ranking r
INNER JOIN streaming_info si ON si.streaming_id = r.streaming_id
INNER JOIN streamer s ON si.strm_id = s. strm_id;


--[1위를 한 적이 있는 방송의] 방송 순위, 스트리머 이름, 플랫폼, 랭크날짜
SELECT r.rank_place 순위, s.strm_name 스트리머, s.strm_platform 플랫폼, r.rank_date 랭크인날짜
FROM ranking r
INNER JOIN streamer s ON s.strm_id = r.strm_id
WHERE r.rank_place = 1;


SELECT r. rank_date 랭크인날짜, s.strm_name 스트리머, s.strm_platform 플랫폼, r.rank_place 순위
FROM ranking r
INNER JOIN streamer s ON s.strm_id = r.strm_id
WHERE r.rank_date = '2024-01-09';


--
SELECT * FROM tab;
SELECT * FROM preferences;
SELECT * FROM ranking;
SELECT * FROM review;
SELECT * FROM streamer;
SELECT * FROM streaming_info;
SELECT * FROM streaming_preference;
SELECT * FROM streaming_storage;
SELECT * FROM user_review_relation;
SELECT * FROm users;

--

SELECT * FROM users;
SELECT * FROM preferences;
SELECT * FROM streamer;

--240210 이지수 : user_id 는 VARCHAR2로 변경되었고, user_num이 NUMBER 대신함.
--테이블 생성이 vARCHAR2 여서 맞게 임의의 user_id로 변경함 
--strm_id도 동일.
INSERT INTO preferences VALUES('psswrd', '임방송인', 1003, 81, 150000, 0);
INSERT INTO preferences VALUES('qlalfqjsgh', '빅헤드', 83, 5, 5000, 1);
INSERT INTO preferences VALUES('123098', '선수탐구', 705, 230, 18000, 1);
INSERT INTO preferences VALUES('995884', '더 월드', 600, 120, 0, 0);



------------------------------------------------------------------------

-----------운영자 계정 관리--------------
INSERT INTO admin (admin_id, admin_name, admin_pw, email) 
    VALUES(1,'임요한','12345','sol@soldesk.com');
INSERT INTO admin (admin_id, admin_name, admin_pw, email) 
    VALUES(2,'이지수','12345','sol@soldesk.com');
INSERT INTO admin (admin_id, admin_name, admin_pw, email) 
    VALUES(3,'김진훈','12345','injik@naver.com');
    
    
    

-------------------------------------------------------------------------

--20240211 이지수 데이터 변경/사용내용

DELETE FROM ranking WHERE ranking_id = 5;
INSERT INTO ranking VALUES(30, '2024-01-09', 5, 'dailyViewer', 14);

INSERT INTO ranking VALUES(31, '2024-01-09', 6, 'dailyViewer', 16);
INSERT INTO ranking VALUES(32, '2024-01-09', 7, 'dailyViewer', 15);

INSERT INTO streaming_preference VALUES(40, 75, 110, 100, 2);
INSERT INTO streaming_preference VALUES(31, 67, 98, 60, 4);

INSERT INTO streaming_preference VALUES(28, 60, 87, 50, 7);

INSERT INTO streaming_preference VALUES(25, 57, 85, 47, 14);
INSERT INTO streaming_preference VALUES(23, 55, 80, 45, 16);
INSERT INTO streaming_preference VALUES(20, 50, 70, 40, 15);


ALTER TABLE users ADD subscription VARCHAR2(1);

UPDATE users SET subscription = 'y' WHERE user_num = 1;

--2~4 짝수 subscription n
UPDATE users SET subscription = 'n' WHERE user_num = 4;

--2~5 홀수 subscription y
UPDATE users SET subscription = 'y' WHERE user_num = 5;


--------------------------------------------------------------------


commit;


--------------------------------------------------------------------



--<<사용자 더미 데이터>>


--확인 보류 데이터

SELECT * FROM streaming_info;

INSERT INTO streaming_info VALUES(1, '발로란트 배치고사', null,'1시간','게임','2024-01-11',1);

INSERT INTO Preferences VALUES(1,100,1,10,1000,1);

insert into Streaming_preference VALUES(5,3,1,10,15,1);

INSERT INTO ranking VALUES(1,'2024-01-11',1,'평균시청자수',100);