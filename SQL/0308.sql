--오전 추가 정보
INSERT INTO streamer VALUES (streamer_idx_seq.nextval, '게임ZONE', '남', '일반', '오프라인', '유튜브', 50000, streamer_profile_12);
INSERT INTO streamer VALUES (streamer_idx_seq.nextval, '플레이뷰', '남', '일반', '온라인', '치지직', 47500, streamer_profile_13);
INSERT INTO streamer VALUES (streamer_idx_seq.nextval, '조이스틱코어', '여', '일반', '온라인', '아프리카', 47300, streamer_profile_14);
INSERT INTO streamer VALUES (streamer_idx_seq.nextval, '버튼승부', '여', '일반', '온라인', '아프리카', 47200, streamer_profile_15);
INSERT INTO streamer VALUES (streamer_idx_seq.nextval, '에코웨이브', '여', '일반', '오프라인', '유튜브', 47000, streamer_profile_16);

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