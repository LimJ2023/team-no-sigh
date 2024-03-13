
---관리자 계정 데이터---
insert into admin (admin_id, admin_name, admin_pw, email)
values (admin_id_seq.nextval, '임요한', '12345', 'Imyohan@naver.com');

INSERT INTO admin (admin_id, admin_name, admin_pw, email)
VALUES (admin_id_seq.nextval, '이지수', 'ljs123', 'LJS@google.com');

INSERT INTO admin (admin_id, admin_name, admin_pw, email)
VALUES (admin_id_seq.nextval, '김진훈', 'Kim112', 'KimJinHoon@Daum.net');

INSERT INTO admin (admin_id, admin_name, admin_pw, email)
VALUES (admin_id_seq.nextval, '최민기', 'Choi91', 'Choi@naver.com');

INSERT INTO admin (admin_id, admin_name, admin_pw, email)
VALUES (admin_id_seq.nextval, '박현수', '11029', 'ParkHyeonSu@google.com');

INSERT INTO admin (admin_id, admin_name, admin_pw, email)
VALUES (admin_id_seq.nextval, 'ADMIN', '12345', 'soldesk@soldesk.com');

update admin set last_login = '24/03/07'
WHERE admin_id = 0;
update admin set last_login = '24/03/08'
WHERE admin_id = 1;
update admin set last_login = '24/03/09'
WHERE admin_id = 2;
update admin set last_login = '24/03/10'
WHERE admin_id = 3;
update admin set last_login = '24/03/06'
WHERE admin_id = 4;
update admin set last_login = '24/03/05'
WHERE admin_id = 5;


---공지사항 데이터---
INSERT INTO admin_notice (admin_id, notice_num, notice_type, notice_title, notice_content)
VALUES (1, notice_num_seq.nextval, '공지사항', '24년 2월 29일 공지사항입니다.', '기존에 존재하고 있던 로그인 오류 수정하였으며, 서버가 잠시 불안정하던 문제를
바로잡았습니다.');

INSERT INTO admin_notice (admin_id, notice_num, notice_type, notice_title, notice_content)
VALUES (2, notice_num_seq.nextval, '점검', '24년 3월 1일 점검 안내.', '3월 1일 06시00분을 기준으로 잠시 임시 점검이 있을 예정입니다.');

INSERT INTO admin_notice (admin_id, notice_num, notice_type, notice_title, notice_content)
VALUES (3, notice_num_seq.nextval, '업데이트', '24년 3월 15일 업데이트 안내', '24년 3월 15일 10시00분을 기준으로 사이트 및 서버 업데이트를 할 예정입니다.
그동안 이용이 잠시 불가능한 점 양해 부탁드립니다.');

INSERT INTO admin_notice (admin_id, notice_num, notice_type, notice_title, notice_content)
VALUES (4, notice_num_seq.nextval, '공지사항', '24년 3월 15일 공지사항.', '3월 1일 06시00분을 기준으로 잠시 임시 점검이 있을 예정입니다.');

INSERT INTO admin_notice (admin_id, notice_num, notice_type, notice_title, notice_content)
VALUES (1, notice_num_seq.nextval, '공지사항', '24년 3월 1일 점검 안내.', '3월 1일 06시00분을 기준으로 잠시 임시 점검이 있을 예정입니다.');


---유저 데이터---
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription, user_image)
values(users_seq.nextval,'qwer','12345','이여성','여자',22,'한국','y', 'user_profile_1.png');
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription, user_image)
values(users_seq.nextval,'asdf','asdf','김남성','남자',28,'한국','n', 'user_profile_2.png');
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription, user_image)
values(users_seq.nextval,'12345','12345','김인직','남자',40,'한국','y', 'user_profile_3.png');
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription, user_image)
values(users_seq.nextval,'soldesk','54321','솔데스크','여자',35,'한국','n', 'user_profile_4.png');
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription, user_image)
values(users_seq.nextval,'star','1234','이스타','남자',35,'한국','n', 'user_profile_5.png');
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription, user_image)
values(users_seq.nextval,'limj','12345','임요한','남자',30,'한국','y', 'user_profile_2.png');

---스트리머 더미 데이터---
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '감스트', '남', '골드', '온라인', '아프리카', '1062000',  'streamer_profile_1');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '케인', '남', '실버', '온라인', '치지직', '241000',  'streamer_profile_2');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '머독', '남', '실버', '온라인', '아프리카', '353000', 'streamer_profile_3');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '빅헤드', '남', '실버', '오프라인', '치지직', '286000', 'streamer_profile_4');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '한동숙', '남', '실버', '오프라인', '치지직', '654000', 'streamer_profile_5');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '기타히어로', '여', '일반', '오프라인', '유튜브', '31000', 'streamer_profile_6');
INSERT INTO streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
VALUES (STREAMER_IDX_SEQ.nextval, '김지섭', '남', '일반', '온라인', '유튜브', '30', 'streamer_profile_6');

--스트리머 더미 데이터 추가(0304 이지수)
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '물방울게임러', '남', '실버', '오프라인', '아프리카', '62000', 'streamer_profile_7');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '파도타는게이머', '남', '실버', '오프라인', '아프리카', '58000', 'streamer_profile_8');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '꿈나무스트리머', '남', '실버', '온라인', '유튜브', '55000', 'streamer_profile_9');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '별빛쟁이', '여', '실버', '온라인', '유튜브', '55000', 'streamer_profile_10');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
values ( streamer_idx_seq.nextval, '푸른도시의선장', '여', '실버', '오프라인', '치지직', '57500', 'streamer_profile_11');


----방송 제목과 이미지 이름을 같게 만들기
UPDATE streaming_info SET streaming_image = (SELECT i2.streaming_description
                                         FROM streaming_info i2
                                         WHERE i2.streaming_id = streaming_info.streaming_id)
WHERE streaming_id >= 0;



-----------------방송에 들어갈 썸네일 등록---------------
--썸네일은 1번대
--insert into streaming_img (img_id, img_url) 
--    VALUES(1, 'thumbnail1');
--insert into streaming_img (img_id, img_url) 
--    VALUES(2, 'thumbnail2');
--insert into streaming_img (img_id, img_url) 
--    VALUES(3, 'thumbnail3');
--insert into streaming_img (img_id, img_url) 
--    VALUES(4, 'thumbnail4');
--insert into streaming_img (img_id, img_url) 
--    VALUES(5, 'thumbnail5');
--insert into streaming_img (img_id, img_url) 
--    VALUES(6, 'thumbnail6');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (7, 'https://images.app.goo.gl/wf7tSkYaD3fUcfy37');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (8, 'https://images.app.goo.gl/jkXzLYTQ8N8FTpoU6');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (9, 'https://www.pexels.com/ko-kr/photo/1194036/');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (10, 'https://www.pexels.com/ko-kr/photo/3432929/');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (11, 'https://www.pexels.com/ko-kr/photo/3586056/');
--insert into streaming_img (img_id, img_url) 
--    VALUES(12, 'thumbnail7');
--    insert into streaming_img (img_id, img_url) 
--    VALUES(13, 'thumbnail8');
--    
----스트리머 이미지는 200번대
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (200, 'streamer_profile_1');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (201, 'streamer_profile_2');
--
----유저 이미지는 400번대
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (400, 'user_profile_1');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (401, 'user_profile_2');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (402, 'user_profile_3');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (403, 'user_profile_4');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (404, 'user_profile_5');
--INSERT INTO streaming_img(img_id, img_url) 
--    VALUES (405, 'user_profile_1');
--    


-----방송 카테고리(주제) 데이터----
INSERT INTO stream_categorys (stream_categorys_id, categorys) VALUES(0,'영화');
INSERT INTO stream_categorys (stream_categorys_id, categorys) VALUES(1,'게임');
INSERT INTO stream_categorys (stream_categorys_id, categorys) VALUES(2,'음악');
INSERT INTO stream_categorys (stream_categorys_id, categorys) VALUES(3,'리뷰');
INSERT INTO stream_categorys (stream_categorys_id, categorys) VALUES(4,'주식');
INSERT INTO stream_categorys (stream_categorys_id, categorys) VALUES(5,'음식');
INSERT INTO stream_categorys (stream_categorys_id, categorys) VALUES(6,'수다');
INSERT INTO stream_categorys (stream_categorys_id, categorys) VALUES(7,'스포츠');



---스트리밍 인포 데이터---
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval,'타르코프 초기화', 'http://www.youtube.com', '7시간 12분', 1, '2024-01-09', '빅헤드', 'thumbnail_1');
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval, '자낳대 대회', 'http://www.youtube.com','4시간 30분', 1, '2024-01-10', '한동숙', 'thumbnail_2');
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval, '레식 시즈킹 대회', 'http://www.youtube.com','6시간 29분 25초', 1, '2024-01-12', '빅헤드', 'thumbnail_3');
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES(streaming_id_seq.nextval, '코딩하기싫다', 'youtube.com','1시간 52분', 6, '2024-01-08', '김지섭', 'thumbnail_4');
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES(streaming_id_seq.nextval, '코딩노잼이에요', 'afreecatv.com','2시간 22분', 6, '2024-01-10',  '김지섭', 'thumbnail_5');
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES(streaming_id_seq.nextval, '자유를 찾았어요', 'youtube.com','4시간 22분', 1, '2024-01-11',  '김지섭', 'thumbnail_6');

INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval, '감스트 맨유 2-1 패배.. 진짜 개못한다', 'https://www.youtube.com/watch?v=-P660O7wr6w', '14:20', 7, '2024-02-25', '감스트', 'thumbnail_7');
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval, '미친 프리킥', 'https://www.youtube.com/watch?v=ppfiM-C5vtQ', '31:15', 1, '2024-02-27', '케인', 'thumbnail_8');
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval, '감히 도전 할 수 없는 전설의 45번 도전과제', 'https://www.youtube.com/watch?v=vJPbxBAvPCI', '15:15', 1, '2024-02-26', '머독', 'thumbnail_9');
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval, '대규모 패치한 오버워치 근황', 'https://www.youtube.com/watch?v=DHGGYPe-foo', '17:54', 1, '2024-02-28', '빅헤드', 'thumbnail_10');
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval, '그냥 분탕치는게 좋은 사람', 'https://www.youtube.com/watch?v=Jyxu53dwkZw', '18:31', 1, '2024-02-28', '한동숙', 'thumbnail_11');
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval, '9일 테스트용 제목', 'http://www.chzzk.com', '00:30', 1, '2024-01-09', '김지섭', 'thumbnail_12');
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval, '그 밴드 기타커버', 'https://youtu.be/BGlQakaaJDs?si=Ucq3CQiFGzrYI333', '01:30', 2, '2024-03-01', '기타히어로', 'thumbnail_13');

--방송 더미 데이터 추가 ( 0304 이지수)

INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval,'어디로 갈지 모르는 랜덤 모험!', 'http://www.afreecatv.com', '3시간 12분', 1, '2024-01-09', '물방울게임러', 'thumbnail_14');
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval,'우주를 탐험하는 랜덤 우주선', 'http://www.afreecatv.com', '4시간 22분', 1, '2024-01-09', '파도타는게이머', 'thumbnail_15');
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval,'마법의 대륙을 지배하라', 'http://www.youtube.com', '6시간 01분', 1, '2024-01-09', '꿈나무스트리머', 'thumbnail_16');
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval,'무한한 모험의 땅으로 여행을 떠나다', 'http://www.youtube.com', '2시간 28분', 1, '2024-01-09', '별빛쟁이', 'thumbnail_17');    
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
    VALUES (streaming_id_seq.nextval,'최후의 전투 운명의 순간', 'http://www.chzzk.com', '5시간 15분', 1, '2024-01-09', '푸른도시의선장', 'thumbnail_18');


---방송 리뷰 데이터---
--INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
--    VALUES(REVIEW_ID_SEQ.nextval,'psswrd',2,'재밌다',10,'2024-01-13');
--INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
--    VALUES(REVIEW_ID_SEQ.nextval, 'psswrd', 1, '재밌다', 10, '2024-01-13');
--INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
--    VALUES(REVIEW_ID_SEQ.nextval, 'qlalfqjsgh', 0, '꿀잼',8, '2024-01-13');
--INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
--    VALUES(REVIEW_ID_SEQ.nextval, '123098', 3, '나쁘지 않음', 4, '2024-01-13');
--INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
--    VALUES(REVIEW_ID_SEQ.nextval, '995884', 4, '노잼', 2, '2024-01-13');
--INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
--    VALUES(REVIEW_ID_SEQ.nextval, 'dkssud', 5, '볼만해요', 5, '2024-01-13');
--

---게시판 데이터---
INSERT INTO board (board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
    VALUES(board_seq.nextval, 'soldesk', '제목이요', '이거 맞추기는 했는데, 이게 컨트롤 부족인지 설명 좀.', sysdate, 1, 0, '게임');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '임요환', '질럿은 야마토 한방에 안죽어', '질럿이 소형에 야마토가 폭발형 대미지에 반감되서 결과적으로 체력 1됨', sysdate, 0, 0, '게임');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '강무성', '크리스마스 영화 특', '나홀로 집에는 무조건 방송함', sysdate, 0, 0, '영화');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '마두식', '이로마 음악 추천', 'Kiss the Rain, river Flows In you 등등', sysdate, 0, 0, '음악');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '김하루', '종로 길거리 음식', '여기 저기 먹어봤는데 불백당, 쏘핫 마라탕 먹어 볼만해요', sysdate, 0, 0, '리뷰');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '한태수', '주식 투자 할때 참고 할 것', '말도 안되는 이자율 보이면 그거 사기일 가능성 높음. 적당히 천천히 오르는 주식 잘 찾아보셈', sysdate, 0, 0, '주식');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '이정재', '이 집 해장국은 일품임', '해장국이 국물도 뻑뻑하고 고기도 많이 들어가 있음. 어릴 때도 있었는데 아직도 운영함.', sysdate, 0, 0, '음식');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '김장민', '아재 개그', '세상에서 제일 착한 사자는 자원봉사자, 소가 회전하는 방향은 우회전, 가장 가난한 왕은 최저임금', sysdate, 0, 0, '수다');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '김정민', '브라질 축구 요약', '7777777', sysdate, 0, 0, '스포츠');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '강호순', '나루토 vs 사스케 전 봤냐', '가슴이 웅장해진다.', sysdate, 0, 0, '수다');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '남상우', '산나비 명작인데', '나한테는 좀 많이 어려운 것 같다.', sysdate, 0, 0, '게임');

insert into board(board_idx, user_id, title, info, board_date, view_count, comment_count, categorys)
VALUES(board_seq.nextval, '김씨', '김씨표류기에 한장면', '진심으로 그 장면만 보면 짜장면이 먹고 싶어져서 중국집 짜장면 시킴', sysdate, 0, 0, '영화');

select * from board;

---랭킹 데이터---
INSERT INTO ranking(ranking_id, rank_date, rank_place, rank_method, streaming_id) VALUES (ranking_id_seq.nextval, '2024-01-09', 1, 'dailyViewers', 1);
INSERT INTO ranking(ranking_id, rank_date, rank_place, rank_method, streaming_id) VALUES (ranking_id_seq.nextval, '2024-01-09', 1, 'dailyViewers', 12);
INSERT INTO ranking(ranking_id, rank_date, rank_place, rank_method, streaming_id) VALUES (ranking_id_seq.nextval, '2024-01-10', 1, 'dailyViewers', 2);
INSERT INTO ranking(ranking_id, rank_date, rank_place, rank_method, streaming_id) VALUES (ranking_id_seq.nextval, '2024-01-10', 2, 'dailyViewers', 5);
INSERT INTO ranking(ranking_id, rank_date, rank_place, rank_method, streaming_id) VALUES (ranking_id_seq.nextval, '2024-02-26', 1, 'dailyViewers', 8);
INSERT INTO ranking(ranking_id, rank_date, rank_place, rank_method, streaming_id) VALUES (ranking_id_seq.nextval, '2024-02-28', 1, 'dailyViewers', 10);
INSERT INTO ranking(ranking_id, rank_date, rank_place, rank_method, streaming_id) VALUES (ranking_id_seq.nextval, '2024-02-28', 2, 'dailyViewers', 11);


----방송 선호도 데이터----
INSERT INTO streaming_preference VALUES( 9800, 7500, 130000, 100000, 1);
INSERT INTO streaming_preference VALUES( 9500, 7000, 120000, 9000, 2);
INSERT INTO streaming_preference VALUES( 9000, 6500, 110000, 8000, 5);
INSERT INTO streaming_preference VALUES( 8000, 6000, 100000, 7500, 8);
INSERT INTO streaming_preference VALUES( 7500, 5000,  80000, 7000, 10);
INSERT INTO streaming_preference VALUES( 7000, 4000,  70000, 6000, 11);
INSERT INTO streaming_preference VALUES( 6000, 3000,  60000, 5000, 9);
INSERT INTO streaming_preference (avg_viewers, likes, comments, daily_viewers, streaming_id)
    VALUES( 6000, 160,  20, 5000, 12);

-------유저의 선호도 데이터-------
INSERT INTO preferences (preferences_idx, user_id, streamer_id, review_count, favorites, stream_categorys_id)
    VALUES(PREFERENCES_ID_SEQ.nextval, 'soldesk', '감스트', null, 1, 1);
INSERT INTO preferences (preferences_idx, user_id, streamer_id, review_count, favorites, stream_categorys_id)
    VALUES(PREFERENCES_ID_SEQ.nextval, 'limj', '기타히어로', null, 1, 2);
    
-----------사이트 운영 통계 인설트--------------
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members, site_stat_date)
    VALUES(0,100,5000,30000,150000,3,10,'2024-02-27');
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members, site_stat_date)
    VALUES(1,240,8000,32000,182000,1,11,'2024-02-28');
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members, site_stat_date)
    VALUES(2,210,7000,22000,204000,5,16,'2024-02-29');
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members, site_stat_date)
    VALUES(3,270,10000,29000,233000,6,22,'2024-03-01');
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members, site_stat_date)
    VALUES(4,290,11000,33000,266000,4,26,'2024-03-02');
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members, site_stat_date)
    VALUES(5,320,15000,35000,401000,8,34,'2024-03-03');
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members, site_stat_date)
    VALUES(6,310,13000,38000,439000,6,40,'2024-03-04');


UPDATE ranking SET rank_place=2 WHERE ranking_id=2;




INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 3000, 1750, 38000, 4000, 14);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 2800, 1700, 37000, 3750, 15);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 2700, 1600, 32000, 3500, 16);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 2600, 1580, 30000, 3430, 17);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 2300, 1550, 27000, 3410, 13);

-----스트리머에게 의견 하나 남기기

INSERT INTO streamer_rating (comment_id, user_idx, streamer_idx, streamer_rating, rating_comment, streamer_rating_date)
VALUES(STREAMER_RATING_ID_SEQ.nextval , 5, 5, 5, '나는 기타가 좋아', sysdate);


--오전 추가 정보
INSERT INTO streamer VALUES (streamer_idx_seq.nextval, '게임ZONE', '남', '일반', '오프라인', '유튜브', 50000, 'streamer_profile_12');
INSERT INTO streamer VALUES (streamer_idx_seq.nextval, '플레이뷰', '남', '일반', '온라인', '치지직', 47500, 'streamer_profile_13');
INSERT INTO streamer VALUES (streamer_idx_seq.nextval, '조이스틱코어', '여', '일반', '온라인', '아프리카', 47300, 'streamer_profile_14');
INSERT INTO streamer VALUES (streamer_idx_seq.nextval, '버튼승부', '여', '일반', '온라인', '아프리카', 47200, 'streamer_profile_15');
INSERT INTO streamer VALUES (streamer_idx_seq.nextval, '에코웨이브', '여', '일반', '오프라인', '유튜브', 47000, 'streamer_profile_16');

INSERT INTO streaming_info VALUES (streaming_id_seq.nextval, '게임플렉스', 'http://www.youtube.com', '2시간 22분', 1, '2024-01-09', '게임ZONE', 6);
INSERT INTO streaming_info VALUES (streaming_id_seq.nextval, '버추얼퀘스트', 'http://www.chzzk.com', '4시간 32분', 1, '2024-01-09', '플레이뷰', 7);
INSERT INTO streaming_info VALUES (streaming_id_seq.nextval, '조이패드진지', 'http://www.afreecatv.com', '4시간 22분', 1, '2024-01-09', '조이스틱코어', 8);
INSERT INTO streaming_info VALUES (streaming_id_seq.nextval, '엑스플레이어', 'http://www.afreecatv.com', '5시간 34분', 1, '2024-01-09', '버튼승부', 9);
INSERT INTO streaming_info VALUES (streaming_id_seq.nextval, '이런코딩', 'http://www.youtube.com', '6시간 19분', 6, '2024-01-09', '에코웨이브', 10);

INSERT INTO streaming_preference VALUES(2300, 1752, 35000, 3600, 18);
INSERT INTO streaming_preference VALUES(2200, 1240, 27500, 1980, 19);
INSERT INTO streaming_preference VALUES(2500, 1500, 32500, 4100, 20);
INSERT INTO streaming_preference VALUES(2100, 1200, 25000, 1900, 21);
INSERT INTO streaming_preference VALUES(1950, 1300, 25100, 2000, 22);

INSERT INTO streaming_info VALUES (streaming_id_seq.nextval, '1월 8일 게임', 'http://www.afreecatv.com', '2시간 28분', 1, '2024-01-08', '머독', 6);
INSERT INTO streaming_preference VALUES(12300, 11752, 315000, 31600, 23);

--15:56 추가 정보
INSERT INTO preferences (preferences_idx, user_id, streamer_id, review_count, favorites, stream_categorys_id)
    VALUES(PREFERENCES_ID_SEQ.nextval, 'qwer', '머독', null, 1, 1);

--회원가입 후 구독상태(subscription) 기본 n 상태로 만들기 위해 디폴트 추가
ALTER TABLE users MODIFY (subscription DEFAULT 'n');

--테스트용 방송 더미 추가
INSERT INTO streaming_preference VALUES(25800, 17450, 34856, 61020, 3);

--스트리머 더미 추가(스포츠 카테고리) // profile 17 부터
--insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
--values ( streamer_idx_seq.nextval, '감스트', '남', '골드', '온라인', '아프리카', '1062000',  'streamer_profile_1');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '스포트츠 파이어', '남', '일반', '오프라인', '유튜브', 37500, 'streamer_profile_17');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '엑스트림 그라운드', '남', '실버', '오프라인', '아프리카', 62800, 'streamer_profile_18');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '어드레날린레이서', '여', '일반', '온라인', '아프리카', 25900, 'streamer_profile_19');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '에너지 블래스트', '남', '일반', '오프라인', '치지직', 48300, 'streamer_profile_20');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '피트니스플래쉬', '여', '실버', '오프라인', '유튜브', 55200, 'streamer_profile_21');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '업텐션 스포츠', '남', '실버', '오프라인', '유튜브', 41700, 'streamer_profile_22');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '에어본 애스팔트', '남', '일반', '온라인', '유튜브', 30400, 'streamer_profile_23');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '아케이드 아스리트', '남', '실버', '온라인', '유튜브', 67600, 'streamer_profile_24');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '스포츠 스트라이커', '남', '일반', '온라인', '유튜브', 22100, 'streamer_profile_25');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '엑스트림 이뉴스', '남', '실버', '오프라인', '유튜브', 36900, 'streamer_profile_26');

--스트리머 더미 데이터 (음식 카테고리용)
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '맛폭발', '남', '일반', '온라인', '유튜브', 33910, 'streamer_profile_27');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '미식청춘', '여' ,'실버', '오프라인', '유튜브', 68157, 'streamer_profile_28');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '트렌디테이스트', '여', '일반', '오프라인', '유튜브', 16429, 'streamer_profile_29');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '간식바이브', '남', '일반', '오프라인', '치지직', 13575, 'streamer_profile_30');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '젠지미식', '남', '일반' ,'오프라인', '치지직', 8513, 'streamer_profile_31');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '요리클립', '여', '일반', '오프라인', '유튜브', 24394, 'streamer_profile_32');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '바이트버즈', '남', '실버', '온라인', '유튜브', 46304, 'streamer_profile_33');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '청춘포크', '남', '실버', '온라인' , '유튜브', 44026, 'streamer_profile_34');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '맛의파도', '남', '실버', '오프라인', '아프리카', 48885, 'streamer_profile_35');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '먹방모멘텀', '여', '일반', '온라인', '아프리카', 23705, 'streamer_profile_36');

--스트리머 더미 데이터 (영화 카테고리 용)
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '영화광', '남', '실버', '오프라인', '아프리카', 42546, 'streamer_profile_37');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '시네마청춘', '남', '실버', '오프라인', '치지직', 67658, 'streamer_profile_38');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '필름트렌드', '여', '실버', '온라인', '유튜브', 43549, 'streamer_profile_39');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '무비바이브', '남', '실버', '오프라인', '유튜브', 48215, 'streamer_profile_40');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '필름버즈', '남', '일반', '온라인', '유튜브', 16697, 'streamer_profile_41');

--스트리머 더미 데이터 (카테고리 무관-게임)
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '게임마스터', '남', '실버', '온라인', '아프리카', 49165,  'streamer_profile_42');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '플레이데이', '여', '실버', '오프라인', '유튜브', 56859, 'streamer_profile_43');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '버추얼배틀', '남', '일반', '온라인', '치지직', 27461, 'streamer_profile_44');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '게임뷰', '남', '일반', '온라인', '유튜브', 6859, 'streamer_profile_45');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '조이스틱저널', '남', '일반', '오프라인', '치지직', 18610, 'streamer_profile_46');

INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '엔딩크레딧', '여', '일반', '오프라인', '치지직', 11237, 'streamer_profile_47');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '레벨업라운지', '여', '일반', '온라인', '유튜브', 14955, 'streamer_profile_48');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '픽셀플레이어', '남', '실버', '오프라인', '치지직', 35727, 'streamer_profile_49');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '게이머스그라운드', '남', '실버', '오프라인', '유튜브', 48678, 'streamer_profile_50');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '콘솔커넥트', '남', '실버', '오프라인', '유튜브', 41417, 'streamer_profile_51');


--방송 더미 데이터(스포트츠 파이어(idx17)/ 스포츠 카테고리 = 7 / 게임  = 1 / 유튜브 / streaming_image 25 부터)
--INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
--VALUES (streaming_id_seq.nextval,'타르코프 초기화', 'http://www.youtube.com', '7시간 12분', 1, '2024-01-09', '빅헤드', 'thumbnail_1');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '스포츠 엑스', 'http://www.youtube.com', '6시간 35분', 7, '2024-02-05', '스포트츠 파이어', 'thumbnail_25');

INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '파이어 골', 'http://www.youtube.com', '17시간 10분', 7, '2024-02-07', '스포트츠 파이어', 'thumbnail_26');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '매치데이 라이브', 'http://www.youtube.com', '20시간 23분', 7, '2024-02-19', '스포트츠 파이어', 'thumbnail_27');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '플레이 그라운드', 'http://www.youtube.com', '9시간 1분', 1, '2024-03-09', '스포트츠 파이어', 'thumbnail_28');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '윈닝 스트릭', 'http://www.youtube.com', '17시간 43분', 1, '2024-01-25', '스포트츠 파이어', 'thumbnail_29');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '게임 플랜', 'http://www.youtube.com', '6시간 27분', 1, '2024-01-30', '스포트츠 파이어', 'thumbnail_30');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '올림픽 드림', 'http://www.youtube.com', '9시간 22분', 7, '2024-03-10', '스포트츠 파이어', 'thumbnail_31');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '스포츠 리얼리티', 'http://www.youtube.com', '14시간 12분', 7, '2024-02-08', '스포트츠 파이어', 'thumbnail_32');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '토크 앤 플레이', 'http://www.youtube.com', '9시간 42분', 6, '2024-03-05', '스포트츠 파이어', 'thumbnail_33');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '승부사의 선택', 'http://www.youtube.com', '6시간 25분', 7, '2024-02-21', '스포트츠 파이어', 'thumbnail_34');

--방송 선호도 더미 데이터 (스포트츠 파이어/ 25-34)
--AVG_VIEWERS, LIKES, COMMENTS, DAILY_VIEWERS, STREAMING_ID
--INSERT INTO streaming_preference VALUES( 9800, 7500, 130000, 100000, 1);
INSERT INTO streaming_preference VALUES(4998, 91, 133, 5034, 25);
INSERT INTO streaming_preference VALUES(5355, 150, 92, 5485, 26);
INSERT INTO streaming_preference VALUES(3701, 167, 75, 3873, 27);
INSERT INTO streaming_preference VALUES(1516, 72, 27, 1650, 28);
INSERT INTO streaming_preference VALUES(5215, 69, 85, 5562, 29);
INSERT INTO streaming_preference VALUES(1491, 19, 42, 1603, 30);
INSERT INTO streaming_preference VALUES(1039, 13, 31, 1094, 31);
INSERT INTO streaming_preference VALUES(2328, 65, 32, 2367, 32);
INSERT INTO streaming_preference VALUES(5832, 154, 75, 6238, 33);
--INSERT INTO streaming_preference VALUES(1615, 72, 29, 1776, 34);

--방송 더미 데이터(엑스트림 그라운드(27)스포츠 카테고리 = 7 / 게임  = 1 / 아프리카 / streaming_image 35 부터)
--INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, streaming_image)
--VALUES (streaming_id_seq.nextval,'타르코프 초기화', 'http://www.youtube.com', '7시간 12분', 1, '2024-01-09', '빅헤드', 'thumbnail_1');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '엑스트림 라이브', 'http://www.afreecatv.com', '00시간 05분', 7, '2024-01-14', '엑스트림 그라운드', 'thumbnail_35');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '어드벤처 매니아', 'http://www.afreecatv.com', '12시간 03분', 7, '2024-02-09', '엑스트림 그라운드', 'thumbnail_36');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '레이스 투 더 리미트', 'http://www.afreecatv.com', '18시간 55분', 7, '2024-02-16', '엑스트림 그라운드', 'thumbnail_37');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '액션 플래닛', 'http://www.afreecatv.com', '04시간 40분', 7, '2024-02-03', '엑스트림 그라운드', 'thumbnail_38');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '스릴 챌린지', 'http://www.afreecatv.com', '00시간 45분', 7, '2024-03-04', '엑스트림 그라운드', 'thumbnail_39');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '어드벤처 퀘스트', 'http://www.afreecatv.com', '11시간 18분', 7, '2024-01-28', '엑스트림 그라운드', 'thumbnail_40');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '리스크 타커스', 'http://www.afreecatv.com', '22시간 12분', 7, '2024-02-13', '엑스트림 그라운드', 'thumbnail_41');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '에지 오브 엑스트림', 'http://www.afreecatv.com', '02시간 49분', 7, '2024-02-07', '엑스트림 그라운드', 'thumbnail_42');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '스턴트 스페셜', 'http://www.afreecatv.com', '10시간 34분', 7, '2024-02-29', '엑스트림 그라운드', 'thumbnail_43');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '드레날린 러시', 'http://www.afreecatv.com', '12시간 08분', 7, '2024-01-29', '엑스트림 그라운드', 'thumbnail_44');

--(35~44)
INSERT INTO streaming_preference VALUES(6095, 255, 365, 6423, 35);
INSERT INTO streaming_preference VALUES(11311, 115, 720, 11577, 36);
INSERT INTO streaming_preference VALUES(9208, 196, 798, 9519, 37);
INSERT INTO streaming_preference VALUES(13116, 511, 526, 14221, 38);
INSERT INTO streaming_preference VALUES(14077, 284, 1120, 15234, 39);
INSERT INTO streaming_preference VALUES(5490, 101, 155, 5533, 40);
INSERT INTO streaming_preference VALUES(3972, 100, 96, 4054, 41);
INSERT INTO streaming_preference VALUES(14956, 377, 886, 15399, 42);
INSERT INTO streaming_preference VALUES(11488, 478, 403, 12186, 43);
--INSERT INTO streaming_preference VALUES(9170, 368, 395, 9287, 44);


UPDATE streaming_preference SET daily_viewers = 12232 WHERE streaming_id = 11;
UPDATE streaming_preference SET likes = 10000 WHERE streaming_id = 11;

UPDATE streamer SET streamer_image = 'streamer_profile_66' WHERE streamer_idx = 6;

UPDATE streaming_info SET streaming_description = '코딩 is fun' WHERE streaming_id = 3;
UPDATE streaming_info SET streaming_description = '코딩유잼' WHERE streaming_id = 4;

INSERT INTO preferences (preferences_idx, user_id, streamer_id, review_count, favorites, stream_categorys_id)
    VALUES(PREFERENCES_ID_SEQ.nextval, 'soldesk', '감스트', null, 1, 1);


--스트리머 정보 추가
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '김지섭팬', '남', '일반', '오프라인', '유튜브', 5, 'streamer_profile_67');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '짭지섭', '남', '일반', '오프라인', '유튜브', 10, 'streamer_profile_68');

--방송 정보 (3월 12일)
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '이런 게임은 좀', 'http://www.youtube.com', '4시간 22분', 1, '2024-03-12', '감스트', 'thumbnail_45');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '게임이 망해도 돼', 'http://www.afreecatv.com', '7시간 10분', 1, '2024-03-12', '머독', 'thumbnail_46');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '게임 작작... 아니 더 하고 싶음', 'http://www.youtube.com', '4시간 22분', 1, '2024-03-12', '빅헤드', 'thumbnail_47');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '노래 기타로 쟝쟝', 'http://www.youtube.com', '2시간 22분', 2, '2024-03-12', '기타히어로', 'thumbnail_48');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '봄 노래합니다', 'http://www.youtube.com', '1시간 21분', 2, '2024-03-12', '김지섭', 'thumbnail_49');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '이 노래 들어주셈', 'http://www.youtube.com', '1시간 2분', 2, '2024-03-12', '김지섭팬', 'thumbnail_50');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '좋은 노래 흑흑', 'http://www.youtube.com', '0시간 42분', 2, '2024-03-12', '짭지섭', 'thumbnail_51');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '별빛이 게임해요', 'http://www.youtube.com', '5시간 47분', 1, '2024-03-12', '별빛쟁이', 'thumbnail_52');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '등갈비를 먹어야해', 'http://www.youtube.com', '3시간 17분', 5, '2024-03-12', '맛폭발', 'thumbnail_53');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '돼지 갈비 소갈비', 'http://www.youtube.com', '4시간 4분', 5, '2024-03-12', '미식청춘', 'thumbnail_54');

--방송 선호도 정보 ( 44~ 53 / 지섭s 48 49 50 / 평균/좋아요/댓글/일일/아이디)
INSERT INTO streaming_preference VALUES(54105, 38451, 132450, 67500, 44);
INSERT INTO streaming_preference VALUES(32014, 29047, 114872, 58874, 45);
INSERT INTO streaming_preference VALUES(45574, 30045, 124554, 60154, 46);
INSERT INTO streaming_preference VALUES(10014, 12451, 84512, 30142, 47);
INSERT INTO streaming_preference VALUES(71452, 58479, 154263, 85496, 48);
INSERT INTO streaming_preference VALUES(4457, 1032, 574, 5241, 49);
INSERT INTO streaming_preference VALUES(420, 57, 256, 471, 50);
INSERT INTO streaming_preference VALUES(8451, 7415, 5640, 10402, 51);
INSERT INTO streaming_preference VALUES(9312, 5414, 8251, 10403, 52);
INSERT INTO streaming_preference VALUES(3452, 1023, 1045, 3540, 53);

----방송 제목과 이미지 이름을 같게 만들기
UPDATE streaming_info SET streaming_image = (SELECT i2.streaming_description
                                         FROM streaming_info i2
                                         WHERE i2.streaming_id = streaming_info.streaming_id)
WHERE streaming_id >= 0;

INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '감스트 격파 30단계 챌린지', 'http://www.youtube.com', '0시간 22분', 6, '2024-03-14', '감스트', '감스트 격파 30단계 챌린지');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '화제의 버섯커 키우기', 'http://www.youtube.com', '2시간 13분', 1, '2024-03-14', '머독', '화제의 버섯커 키우기');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '봄 노래 합니다', 'http://www.youtube.com', '1시간 08분', 2, '2024-03-14', '김지섭', '봄 노래 합니다');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '노래 들어라', 'http://www.youtube.com', '3시간 28분', 2, '2024-03-14', '짭지섭', '노래 들어라');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '이 노래 불러줬으면 좋겠다', 'http://www.youtube.com', '5시간 04분', 2, '2024-03-14', '김지섭팬', '이 노래 불러줬으면 좋겠다');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '야구의 기초', 'http://www.youtube.com', '3시간 34분', 7, '2024-03-14', '아케이드 아스리트', '야구의 기초');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '식탁 대화', 'http://www.youtube.com', '5시간 07분', 6, '2024-03-14', '맛의파도', '식탁 대화');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '콘솔 고쳐서 게임해보기', 'http://www.youtube.com', '4시간 47분', 1, '2024-03-14', '콘솔커넥트', '콘솔 고쳐서 게임해보기');
INSERT INTO streaming_info VALUES(streaming_id_seq.nextval, '근본으로 돌아가', 'http://www.youtube.com', '2시간 27분', 1, '2024-03-14', '게이머스그라운드', '근본으로 돌아가');

--방송 선호도 정보 ( 44~ 53 / 지섭s 48 49 50 / 평균/좋아요/댓글/일일/아이디)
INSERT INTO streaming_preference VALUES(51800, 39000, 4915, 64500, 54);

INSERT INTO streaming_preference VALUES(21300, 20500, 2041, 31200, 55);
INSERT INTO streaming_preference VALUES(130785, 101245, 10324, 205748, 56);
INSERT INTO streaming_preference VALUES(14520, 10145, 1421, 24536, 57);
INSERT INTO streaming_preference VALUES(12589, 8751, 1214, 22153, 58);
INSERT INTO streaming_preference VALUES(10254, 8120, 1002, 20142, 59);
INSERT INTO streaming_preference VALUES(7541, 5021, 842, 10352, 60);
INSERT INTO streaming_preference VALUES(7102, 4695, 756, 8752, 61);
INSERT INTO streaming_preference VALUES(5102, 3652, 561, 6210, 62);


commit;
