SELECT * FROM STREAMER;
select * from users;

------------스트리머들----------
INSERT INTO streamer VALUES(100,'임요한','여','실버','활성','유튜브',5);
insert into streamer VALUES(101, '빅헤드', '남성', '골드', '온라인', '치지직', 1230);
insert into streamer values(102, '가방송', '남', '골드', '활성', '치지직', 203);
INSERT INTO streamer VALUES(103,'선수탐구','남', '플래티넘','비활성','유튜브',30);
insert into streamer values(104, '더 월드', '남성', '플래티나', '오프라인', '유튜브', 100000);
INSERT INTO streamer VALUES(105, '임방송인', '여', '브론즈', '비활성', '유튜브', 23);

INSERT INTO streamer VALUES(106,'이스타','남', '골드','활성','아프리카',100);
INSERT INTO streamer VALUES(107,'보따','남', '실버','활성','치지직',50);
INSERT INTO streamer VALUES(108,'이스타','남', '골드','활성','아프리카',73);
INSERT INTO streamer VALUES(109,'릴카','여', '플래티넘','비활성','치지직',47);

------------유저들------------
insert into users VALUES(1, 'abcd', '김인직', '남', 40, '한국');
insert into users VALUES(2, '1234', '홍길동', '남성', 30, '한국');
insert into users VALUES(3, '5678', '이지은', '여성', 22, '한국');
insert into users VALUES(4, 'abcd1234', '박철수', '남', 25, '한국');
insert into users VALUES(5, 'pass4321', '김영희', '여성', 35, '한국');

INSERT INTO users VALUES(6, 'psswrd', '장은우', '남', 24, '한국');
INSERT INTO users VALUES(7, 'qlalfqjsgh', '임도윤', '남', 19, '한국');
INSERT INTO users VALUES(8, '123098', '장지우', '남', 21, '한국');
INSERT INTO users VALUES(9, '995884', '장서연', '여', 27, '한국');
INSERT INTO users VALUES(10, 'dkssud', '정도윤', '여', 20, '한국');

insert into users VALUES(11,'abcd','김인직','남',40,'한국');
insert into users VALUES(12,'dmstn','임요한','남',25,'한국');
insert into users VALUES(13,'location','이지수','여',24,'한국');
insert into users VALUES(14,'id','최민기','남',23,'한국');
insert into users VALUES(15,'asdf','박현수','남',22,'한국');

INSERT INTO users VALUES(16, 'iu', '아이유', '여', 30, '한국');
INSERT INTO users VALUES(17, 'ubin', '김우빈', '남', 33, '한국');
INSERT INTO users VALUES(18, 'mina', '신민아', '여', 35, '한국');
INSERT INTO users VALUES(19, 'gamst', '감스트', '남', 36, '한국');
INSERT INTO users VALUES(20, 'jonsuk', '이종석', '남', 32, '한국');

insert into users values(21, 'qwer', '가시청' , '남', 23, '한국');
insert into users values(22, 'asdf', '나시청' , '여', 24, '한국');
insert into users values(23, 'zxcv', '다시청' , '남', 25, '한국');
insert into users values(24, 'tyui', '라시청' , '여', 26, '한국');
insert into users values(25, 'ghjk', '마시청' , '남', 27, '한국');


insert into users values(26,'deep','반 다크홈','남',40,'미국');
insert into users values(27,'snow','예카','여',23,'러시아');
insert into users values(28,'ddewr','죠지','남',40,'영국');
insert into users values(29,'deew','유카','여',24,'일본');
insert into users values(30,'de35','안쭈이','여',40,'중국');

INSERT INTO users VALUES(31, 'chulgu', '철구', '남', 36, '일본');
INSERT INTO users VALUES(32, 'kanna', '하시모토칸나', '여', 26, '일본');
INSERT INTO users VALUES(33, 'mei', '나가노메이', '여', 25, '일본');
INSERT INTO users VALUES(34, 'kensi', '요네즈켄시', '남', 22, '일본');
INSERT INTO users VALUES(35, 'yuuri', '유우리', '남', 28, '일본');

--------------방송 기록-----------
select * from streaming_storage;
select * from streaming_info;
SELECT * FROM STREAMER;

INSERT INTO streaming_storage VALUES(1,100);
INSERT INTO streaming_info VALUES(1, '발로란트 배치고사', null,'1시간','게임','2024-01-11',1);
INSERT INTO streaming_info VALUES(2, '발로란트 배치2일차', null,'1시간','게임','2024-01-12',1);
INSERT INTO streaming_info VALUES(3, '코딩방송', null,'3시간','공부','2024-01-13',1);

insert into streaming_storage VALUES (2, 101);
insert into streaming_info values (1001, '타르코프 초기화', 'http://www.youtube.com', '7시간 12분', '게임', '2024-01-09', 2);
insert into streaming_info values (1002, '자낳대 대회', 'http://www.youtube.com', '4시간 30분', '게임', '2024-01-08', 2);
insert into streaming_info values (1003, '레식 시즈킹 대회', 'http://www.youtube.com', '6시간 29분 25초', '게임', '2024-01-07', 2);

INSERT INTO streaming_storage VALUES(6, 105);
INSERT INTO streaming_info VALUES(31, '코딩하기싫다', 'youtube.com', '1시간 52분', '수다', '2024-01-08', 6);
INSERT INTO streaming_info VALUES(32, '코딩노잼이에요', 'afreecatv.com', '2시간 22분', '수다', '2024-01-10', 6);
INSERT INTO streaming_info VALUES(33, '자유를 찾았어요', 'youtube.com', '4시간 22분', '게임', '2024-01-11', 6);



INSERT INTO streaming_storage VALUES(4,103);
INSERT INTO streaming_info VALUES(61,'손흥민이 이적을 할까', 'youtube.com','24시간 50분','축구','2024-01-11',4);
INSERT INTO streaming_info VALUES(62,'황희찬이 이적을 할까', 'youtube.com','26시간 51분','축구','2024-01-12',4);
INSERT INTO streaming_info VALUES(63,'이강인이 이적을 할까', 'youtube.com','30시간 23분','축구','2024-01-13',4);


insert into streaming_storage values(3, 102);
insert into streaming_info values(704, '로아 카멘 트라이', null, '8시간', '게임', '2024-01-12', 3);
insert into streaming_info values(705, '로아 브레이커 세팅', null, '5시간', '게임', '2024-01-13', 3);
insert into streaming_info values(706, '로아 에스더 선언', null, '2시간', '게임', '2024-01-12', 3);



INSERT INTO streaming_storage VALUES(5, 104);

INSERT INTO streaming_info VALUES(20, '12시간 동안 게임해서 미쳐버림', 'https://www.youtube.com/',
    '12시간', '록맨 시리즈', '2024-01-02', 5);
INSERT INTO streaming_info VALUES(19, '난 바다의 제왕 형세이돈이시다', 'https://www.youtube.com/',
    '3시간', '리그 오브 레전드', '2024-01-04', 5);
INSERT INTO streaming_info VALUES(18, '추억의 게임 KOF98', 'https://www.youtube.com/',
    '3시간', 'KOF 98', '2024-01-03', 5);
    
    


----리뷰 삽입--------
SELECT * FROM STREAMING_INFO;
SELECT * FROM REVIEW;

INSERT INTO review values(1,1,0,1,'재밌게봤습니다.','10점','2024-11-12');

INSERT INTO review VALUES(10,15,100,61,'노잼이에요.','1점','2024-01-12');
INSERT INTO review VALUES(11,16,50,62,'지루해요','2점','2024-01-11');
INSERT INTO review VALUES(12,17,60,62,'재밌어요','10점','2024-01-13');
INSERT INTO review VALUES(14,17,80,63,'너무 웃겨요','9점','2024-01-12');
INSERT INTO review VALUES(13,18,99,63,'슬퍼요','4점','2024-01-11');


insert into review values(714, 21, 3, 704, '재밌다', '10점', '2024-01-13');
insert into review values(715, 22, 10, 705, '꿀잼', '8점', '2024-01-13');
insert into review values(716, 23, 7, 705, '나쁘지 않음', '4점', '2024-01-13');
insert into review values(717, 24, 25, 706, '노잼', '2점', '2024-01-13');
insert into review values(718, 25, 9, 706, '볼만해요', '5점', '2024-01-13');


select * from streaming_storage;
select * from streaming_info;
SELECT * FROM STREAMER;







---------------랭킹 삽입--------------

--<<랭킹넣기>>
SELECT * FROM ranking;
SELECT * FROM streamer;

INSERT INTO ranking VALUES(1, '2024-01-09', 1, 'dailyViewer', 100);
INSERT INTO ranking VALUES(2, '2024-01-09', 3, 'dailyViewer', 103);
INSERT INTO ranking VALUES(4, '2024-01-09', 4, 'dailyViewer', 105);
INSERT INTO ranking VALUES(15, '2024-01-10', 1, 'dailyViewer', 105);
INSERT INTO ranking VALUES(27, '2024-01-11', 1, 'dailyViewer', 100);



----------선호도 삽입-----------

INSERT INTO preferences VALUES(21, 105, 1003, 81, 150000, 0);
INSERT INTO preferences VALUES(22, 101, 83, 5, 5000, 1);
INSERT INTO preferences VALUES(23, 103, 705, 230, 18000, 1);
INSERT INTO preferences VALUES(24, 104, 600, 120, 0, 0);
INSERT INTO Preferences VALUES(25,113,2,13,2000,0);
INSERT INTO Preferences VALUES(26,114,3,20,50000,1);
INSERT INTO Preferences VALUES(27,115,4,50,3500,0);
INSERT INTO Preferences VALUES(28,116,5,74,4055,1);