
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
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription)
values(users_seq.nextval,'qwer','12345','이여성','여자',22,'한국','y');
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription)
values(users_seq.nextval,'asdf','asdf','김남성','남자',28,'한국','n');
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription)
values(users_seq.nextval,'12345','12345','김인직','남자',40,'한국','y');
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription)
values(users_seq.nextval,'soldesk','54321','솔데스크','여자',35,'한국','n');
insert into users(user_idx,user_id,user_pw,user_name,user_gender,user_age,user_nation,subscription)
values(users_seq.nextval,'star','1234','이스타','남자',35,'한국','n');


---스트리머 더미 데이터---
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_img)
values ( streamer_idx_seq.nextval, '감스트', '남', '골드', '온라인', '아프리카', '1062000', '1');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_img)
values ( streamer_idx_seq.nextval, '케인', '남', '실버', '온라인', '치지직', '241000', '2');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_img)
values ( streamer_idx_seq.nextval, '머독', '남', '실버', '온라인', '아프리카', '353000', '3');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_img)
values ( streamer_idx_seq.nextval, '빅헤드', '남', '실버', '오프라인', '치지직', '286000', '4');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_img)
values ( streamer_idx_seq.nextval, '한동숙', '남', '실버', '오프라인', '치지직', '654000', '5');

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
INSERT INTO streaming_img(img_id, img_url) 
    VALUES (7, 'https://images.app.goo.gl/wf7tSkYaD3fUcfy37');
INSERT INTO streaming_img(img_id, img_url) 
    VALUES (8, 'https://images.app.goo.gl/jkXzLYTQ8N8FTpoU6');
INSERT INTO streaming_img(img_id, img_url) 
    VALUES (9, 'https://www.pexels.com/ko-kr/photo/1194036/');
INSERT INTO streaming_img(img_id, img_url) 
    VALUES (10, 'https://www.pexels.com/ko-kr/photo/3432929/');
INSERT INTO streaming_img(img_id, img_url) 
    VALUES (11, 'https://www.pexels.com/ko-kr/photo/3586056/');


---스트리밍 인포 데이터---
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval,'타르코프 초기화', 'http://www.youtube.com', '7시간 12분', '게임', '2024-01-09', '감스트', 1);
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '자낳대 대회', 'http://www.youtube.com','4시간 30분', '게임', '2024-01-10', '감스트', 2);
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '레식 시즈킹 대회', 'http://www.youtube.com','6시간 29분 25초', '게임', '2024-01-12', '감스트', 3);
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES(streaming_id_seq.nextval, '코딩하기싫다', 'youtube.com','1시간 52분', '수다', '2024-01-08', '빅헤드', 4);
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES(streaming_id_seq.nextval, '코딩노잼이에요', 'afreecatv.com','2시간 22분', '수다', '2024-01-10',  '빅헤드', 5);
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES(streaming_id_seq.nextval, '자유를 찾았어요', 'youtube.com','4시간 22분', '게임', '2024-01-11',  '빅헤드', 6);

INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '감스트 맨유 2-1 패배.. 진짜 개못한다', 'https://www.youtube.com/watch?v=-P660O7wr6w', '14:20', '스포츠', '2024-02-25', '감스트', 7);
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '[케인]미친 프리킥', 'https://www.youtube.com/watch?v=ppfiM-C5vtQ', '31:15', '게임', '2024-02-27', '케인', 8);
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '감히 도전 할 수 없는 전설의 45번 도전과제', 'https://www.youtube.com/watch?v=vJPbxBAvPCI', '15:15', '게임', '2024-02-26', '머독', 9);
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '대규모 패치한 오버워치 근황 ㅋㅋㅋ...', 'https://www.youtube.com/watch?v=DHGGYPe-foo', '17:54', '게임', '2024-02-28', '빅헤드', 10);
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '그냥 분탕치는게 좋은 사람', 'https://www.youtube.com/watch?v=Jyxu53dwkZw', '18:31', '게임', '2024-02-28', '한동숙', 11);
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '9일 테스트용 제목', 'http://www.chzzk.com', '00:30', '게임', '2024-01-09', '머독', 7);
INSERT INTO streaming_info(streaming_id, streaming_description, streaming_url, streaming_time, streaming_category, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '9일 테스트용 제목2', 'http://www.chzzk.com', '00:30', '게임', '2024-01-09', '머독', 8);

---방송 리뷰 데이터---
INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
    VALUES(REVIEW_ID_SEQ.nextval,'psswrd',2,'재밌다',10,'2024-01-13');
INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
    VALUES(REVIEW_ID_SEQ.nextval, 'psswrd', 1, '재밌다', 10, '2024-01-13');
INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
    VALUES(REVIEW_ID_SEQ.nextval, 'qlalfqjsgh', 0, '꿀잼',8, '2024-01-13');
INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
    VALUES(REVIEW_ID_SEQ.nextval, '123098', 3, '나쁘지 않음', 4, '2024-01-13');
INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
    VALUES(REVIEW_ID_SEQ.nextval, '995884', 4, '노잼', 2, '2024-01-13');
INSERT INTO review (review_idx, user_id, review_streaming_id, writing_data, review_rating, review_creation_date) 
    VALUES(REVIEW_ID_SEQ.nextval, 'dkssud', 5, '볼만해요', 5, '2024-01-13');


---게시판 데이터---
INSERT INTO board (board_idx, user_id, title, info, board_date, view_count, comment_count, tags)
    VALUES(board_seq.nextval, 'soldesk', '제목이요', '이거 맞추기는 했는데, 이게 컨트롤 부족인지 설명 좀.', sysdate, 1, 1, '방송');

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
INSERT INTO streaming_preference VALUES( 6000, 3000,  60000, 5000, 12);


-----------사이트 운영 통계 인설트--------------
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members)
    VALUES(1,100,5000,30000,100000,3,10);
    
INSERT INTO site_stat (stat_id,visit_count,page_views,day_revenue,total_revenue,new_members,total_members)
    VALUES(2,240,8000,32000,182000,1,11);

    
commit;
