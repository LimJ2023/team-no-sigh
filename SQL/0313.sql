SELECT * FROM streamer;
SELECT * FROM stream_categorys;
SELECT * FROM streaming_info;
SELECT * FROM streaming_preference;

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


SELECT streamer_idx, streamer_id, streamer_platform, streamer_image FROM streamer WHERE streamer_idx BETWEEN 14 AND 18;

SELECT streamer_idx, streamer_id, streamer_platform, streamer_image FROM streamer WHERE streamer_idx BETWEEN 14 AND 18;

--49까지 rand
SELECT * FROM streamer;

commit;