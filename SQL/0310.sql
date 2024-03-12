--회원가입 후 구독상태(subscription) 기본 n 상태로 만들기 위해 디폴트 추가
ALTER TABLE users MODIFY (subscription DEFAULT 'n');

--테스트용 방송 더미 추가
INSERT INTO streaming_preference VALUES(25800, 17450, 34856, 61020, 3);

--스트리머 더미 추가(스포츠 카테고리) // profile 17 부터
--insert into streamer( streamer_idx, streamer_id, streamer_gender, streamer_grade, streamer_status, streamer_platform, streamer_followers, streamer_image)
--values ( streamer_idx_seq.nextval, '감스트', '남', '골드', '온라인', '아프리카', '1062000',  'streamer_profile_1');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '스포트츠 파이어', '남', '일반', '오프라인', '유튜브', 37500, 'streamer_profile_17');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '엑스트림 그라운드', '남', '실버', '오프라인', '아프리카', 162800, 'streamer_profile_18');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '어드레날린레이서', '여', '일반', '온라인', '아프리카', 25900, 'streamer_profile_19');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '에너지 블래스트', '남', '일반', '오프라인', '치지직', 48300, 'streamer_profile_20');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '피트니스플래쉬', '여', '실버', '오프라인', '유튜브', 355200, 'streamer_profile_21');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '업텐션 스포츠', '남', '실버', '오프라인', '유튜브', 541700, 'streamer_profile_22');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '에어본 애스팔트', '남', '일반', '온라인', '유튜브', 30400, 'streamer_profile_23');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '아케이드 아스리트', '남', '실버', '온라인', '유튜브', 667600, 'streamer_profile_24');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '스포츠 스트라이커', '남', '일반', '온라인', '유튜브', 22100, 'streamer_profile_25');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '엑스트림 이뉴스', '남', '골드', '오프라인', '유튜브', 1326900, 'streamer_profile_26');

--스트리머 더미 데이터 (음식 카테고리용)
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '맛폭발', '남', '일반', '온라인', '유튜브', 33910, 'streamer_profile_27');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '미식청춘', '여' ,'실버', '오프라인', '유튜브', 768157, 'streamer_profile_28');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '트렌디테이스트', '여', '일반', '오프라인', '유튜브', 16429, 'streamer_profile_29');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '간식바이브', '남', '일반', '오프라인', '치지직', 13575, 'streamer_profile_30');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '젠지미식', '남', '일반' ,'오프라인', '치지직', 8513, 'streamer_profile_31');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '요리클립', '여', '일반', '오프라인', '유튜브', 24394, 'streamer_profile_32');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '바이트버즈', '남', '실버', '온라인', '유튜브', 646304, 'streamer_profile_33');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '청춘포크', '남', '실버', '온라인' , '유튜브', 244026, 'streamer_profile_34');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '맛의파도', '남', '실버', '오프라인', '아프리카', 148885, 'streamer_profile_35');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '먹방모멘텀', '여', '일반', '온라인', '아프리카', 23705, 'streamer_profile_36');

--스트리머 더미 데이터 (영화 카테고리 용)
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '영화광', '남', '실버', '오프라인', '아프리카', 342546, 'streamer_profile_37');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '시네마청춘', '남', '실버', '오프라인', '치지직', 567658, 'streamer_profile_38');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '필름트렌드', '여', '실버', '온라인', '유튜브', 843549, 'streamer_profile_39');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '무비바이브', '남', '골드', '오프라인', '유튜브', 1048215, 'streamer_profile_40');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '필름버즈', '남', '일반', '온라인', '유튜브', 16697, 'streamer_profile_41');

--스트리머 더미 데이터 (카테고리 무관-게임)
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '게임마스터', '남', '실버', '온라인', '아프리카', 449165,  'streamer_profile_42');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '플레이데이', '여', '실버', '오프라인', '유튜브', 356859, 'streamer_profile_43');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '버추얼배틀', '남', '일반', '온라인', '치지직', 27461, 'streamer_profile_44');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '게임뷰', '남', '일반', '온라인', '유튜브', 6859, 'streamer_profile_45');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '조이스틱저널', '남', '일반', '오프라인', '치지직', 18610, 'streamer_profile_46');

INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '엔딩크레딧', '여', '일반', '오프라인', '치지직', 11237, 'streamer_profile_47');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '레벨업라운지', '여', '일반', '온라인', '유튜브', 14955, 'streamer_profile_48');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '픽셀플레이어', '남', '골드', '오프라인', '치지직', 1135727, 'streamer_profile_49');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '게이머스그라운드', '남', '실버', '오프라인', '유튜브', 348678, 'streamer_profile_50');
INSERT INTO streamer VALUES(streamer_idx_seq.nextval, '콘솔커넥트', '남', '실버', '오프라인', '유튜브', 241417, 'streamer_profile_51');


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
INSERT INTO streaming_preference VALUES(1615, 72, 29, 1776, 34);

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
INSERT INTO streaming_preference VALUES(9170, 368, 395, 9287, 44);




commit;
