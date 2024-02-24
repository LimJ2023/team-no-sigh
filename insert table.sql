-----------사이트 운영 통계 인설트--------------
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members)
    VALUES(1,100,5000,30000,100000,3,10);
    
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members)
    VALUES(2,240,8000,32000,182000,1,11);

select * from site_stat;

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

select * from users;

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

insert into streaming_info values (2, '타르코프 초기화', 'http://www.youtube.com',
'7시간 12분', '게임', '2024-01-09', '임요한');
insert into streaming_info values (3, '자낳대 대회', 'http://www.youtube.com',
'4시간 30분', '게임', '2024-01-08', '임요한');
insert into streaming_info values (4, '레식 시즈킹 대회', 'http://www.youtube.com',
'6시간 29분 25초', '게임', '2024-01-07', '임요한');


--이지수(임방송인(105)

INSERT INTO streaming_info VALUES(11, '코딩하기싫다', 'youtube.com',
'1시간 52분', '수다', '2024-01-08', '임방송인');
INSERT INTO streaming_info VALUES(12, '코딩노잼이에요', 'afreecatv.com',
'2시간 22분', '수다', '2024-01-10',  '임방송인');
INSERT INTO streaming_info VALUES(13, '자유를 찾았어요', 'youtube.com',
'4시간 22분', '게임', '2024-01-11',  '임방송인');


--20240210 이지수 : 선수탐구 스킵됨//무결성 제약조건... 아마 strm_id 중복때문인듯
SELECT * FROM streamer;
--진훈님 (선수탐구(103)

INSERT INTO streaming_info VALUES(8,'손흥민이 이적을 할까', 'youtube.com',
'24시간 50분','축구','2024-01-11', '선수탐구');
INSERT INTO streaming_info VALUES(9,'황희찬이 이적을 할까', 'youtube.com',
'26시간 51분','축구','2024-01-12', '선수탐구');
INSERT INTO streaming_info VALUES(10,'이강인이 이적을 할까', 'youtube.com',
'30시간 23분','축구','2024-01-13', '선수탐구');


--민기님 (가방송(102)

insert into streaming_info values(5, '로아 카멘 트라이', null, '8시간',
'게임', '2024-01-12', '빅헤드');
insert into streaming_info values(6, '로아 브레이커 세팅', null, '5시간',
'게임', '2024-01-13', '빅헤드');
insert into streaming_info values(7, '로아 에스더 선언', null, '2시간',
'게임', '2024-01-12', '빅헤드');

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

--<<선호도 입력하기>>

--이지수(스토리지 7)
--240210 이지수 : 스토리지삭제로 인한 값 수 변경 
                

SELECT * FROM streaming_preference;
SELECT * FROM streaming_info;
INSERT INTO streaming_preference VALUES(35, 70, 102, 65, 11);

SELECT * FROM streaming_preference;

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

--=================================================================================================

INSERT INTO preferences VALUES('psswrd', '임방송인', 1003, 81, 150000, 0);
INSERT INTO preferences VALUES('qlalfqjsgh', '빅헤드', 83, 5, 5000, 1);
INSERT INTO preferences VALUES('123098', '선수탐구', 705, 230, 18000, 1);
INSERT INTO preferences VALUES('995884', '더 월드', 600, 120, 0, 0);

-----------운영자 계정 관리--------------
INSERT INTO admin (admin_id, admin_name, admin_pw, email) 
    VALUES(1,'임요한','12345','sol@soldesk.com');
INSERT INTO admin (admin_id, admin_name, admin_pw, email) 
    VALUES(2,'이지수','12345','sol@soldesk.com');
INSERT INTO admin (admin_id, admin_name, admin_pw, email) 
    VALUES(3,'김진훈','12345','injik@naver.com');
    
------------운영자 notice 입력 (시퀀스도 같이 하기)--------------
insert into admin_notice (admin_id, notice_num, notice_type, notice_title,
notice_content)
values (1, 1, '점검', '2021년 2월 21일자 업데이트 내역',
'새로운 기능 구현(db연동)');

insert into admin_notice (admin_id, notice_num, notice_type, notice_title,
notice_content)
values (2, 2, '공지', '2021년 2월 21일자 서버 점검 시간',
'2월 21일 16시00분 ~ 18시00분까지 임시점검이 있을 예정입니다.');

select * from admin_notice;

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

--스트리머 레코드를 추가할 때마다 strm_num 값이 1 늘어나게 하는 시퀀스와 트리거
-- Create a sequence
CREATE SEQUENCE record_id_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE;

-- Create a trigger
CREATE OR REPLACE TRIGGER increase_id_trigger
BEFORE INSERT ON streamer
FOR EACH ROW
BEGIN
    :NEW.strm_num := record_id_seq.NEXTVAL;
END;
/


-----------------방송에 들어갈 썸네일 등록---------------
insert into streaming_img (img_id, img_url) 
    VALUES(1, 'thumbnail1');
insert into streaming_img (img_id, img_url) 
    VALUES(2, 'thumbnail2');
insert into streaming_img (img_id, img_url) 
    VALUES(3, 'thumbnail3');
insert into streaming_img (img_id, img_url) 
    VALUES(4, 'thumbnail4');
insert into streaming_img (img_id, img_url) 
    VALUES(5, 'thumbnail5');
insert into streaming_img (img_id, img_url) 
    VALUES(6, 'thumbnail6');

    
--------------------------------------------------------------------


commit;


--------------------------------------------------------------------