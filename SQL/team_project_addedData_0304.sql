ALTER TABLE users ADD user_image varchar2(500);

UPDATE ranking SET rank_place=2 WHERE ranking_id=2;

--스트리머 더미 데이터 추가(0304 이지수)
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_img)
values ( streamer_idx_seq.nextval, '물방울게임러', '남', '실버', '오프라인', '아프리카', '62000', '7');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_img)
values ( streamer_idx_seq.nextval, '파도타는게이머', '남', '실버', '오프라인', '아프리카', '58000', '8');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_img)
values ( streamer_idx_seq.nextval, '꿈나무스트리머', '남', '실버', '온라인', '유튜브', '55000', '9');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_img)
values ( streamer_idx_seq.nextval, '별빛쟁이', '여', '실버', '온라인', '유튜브', '55000', '10');
insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_img)
values ( streamer_idx_seq.nextval, '푸른도시의선장', '여', '실버', '오프라인', '치지직', '57500', '11');

--방송 더미 데이터 추가 ( 0304 이지수)
--streaming_info 의 streamer_id 크기 두개 40 으로 맞추기
ALTER TABLE streaming_info MODIFY streamer_id VARCHAR2(40);

INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval,'어디로 갈지 모르는 랜덤 모험!', 'http://www.afreecatv.com', '3시간 12분', 1, '2024-01-09', '물방울게임러', 1);
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval,'우주를 탐험하는 랜덤 우주선', 'http://www.afreecatv.com', '4시간 22분', 1, '2024-01-09', '파도타는게이머', 2);
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval,'마법의 대륙을 지배하라', 'http://www.youtube.com', '6시간 01분', 1, '2024-01-09', '꿈나무스트리머', 3);
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval,'무한한 모험의 땅으로 여행을 떠나다', 'http://www.youtube.com', '2시간 28분', 1, '2024-01-09', '별빛쟁이', 4);    
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval,'최후의 전투: 운명의 순간', 'http://www.chzzk.com', '5시간 15분', 1, '2024-01-09', '푸른도시의선장', 5);

INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 3000, 1750, 38000, 4000, 13);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 2800, 1700, 37000, 3750, 16);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 2700, 1600, 32000, 3500, 18);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 2600, 1580, 30000, 3430, 19);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 2300, 1550, 27000, 3410, 20);

    commit;
    
    
--site_stat 테이블
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
    site_stat_date VARCHAR2(255)
);


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
    

--더미 추가 0304 이지수
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '실시간 게임방송_ 모험의 시작!', 'http://www.chzzk.com', '3시간 38분', 1, '2024-01-08', '케인', 7);
INSERT INTO streaming_info (streaming_id ,streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '게임과 이야기를 함께하는 라이브 방송', 'http://www.afreecatv.com', '8시간 1분', 1, '2024-01-08', '머독', 8);
INSERT INTO streaming_info (streaming_id, streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '요리의 마법! 요리사의 주방 탐방', 'http://www.chzzk.com', '1시간 32분', 1, '2024-01-08', '한동숙', 9);
INSERT INTO streaming_info (streaming_id, streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '세계 여행기: 가상으로 떠나는 모험', 'http://www.afreecatv.com', '6시간 22분', 1, '2024-01-08', '물방울게임러', 10);
INSERT INTO streaming_info (streaming_id, streaming_description, streaming_url,streaming_time, stream_categorys_id, streaming_date, streamer_id, img_id)
    VALUES (streaming_id_seq.nextval, '퀴즈 마니아를 위한 라이브 퀴즈쇼', 'http://www.affreecatv.com', '3시간 50분', 1, '2024-01-08', '파도타는게이머', 11);

INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 12700, 11050, 88000, 24000, 3);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 5500, 7050, 18000, 8000, 22);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 5000, 5050, 20000, 7000, 23);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 4500, 4000, 15000, 7500, 24);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 4000, 4000, 13000, 8000, 25);
INSERT INTO streaming_preference(avg_viewers, likes, comments, daily_viewers, streaming_id) VALUES( 3500, 3870, 14500, 6000, 27);

    
    commit;