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