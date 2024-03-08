DROP TABLE user_review_relation;
DROP TABLE Streaming_preference;
DROP TABLE Preferences;
DROP TABLE ranking;
DROP TABLE site_stat;
DROP TABLE review;
DROP TABLE comments;
DROP TABLE board;
DROP TABLE admin_notice;
DROP TABLE admin;
DROP TABLE login_info_table;
DROP TABLE visitor;
DROP TABLE streamer_rating;
DROP TABLE main_carousel_test;


-----0306에 있던 테스트 테이블 드랍
DROP TABLE test_user_streaming_likes;
DROP TABLE test_category;
DROP TABLE test_pref;


DROP TABLE streaming_info;
DROP TABLE streamer;
DROP TABLE users;
DROP TABLE stream_categorys;





--시퀀스 값 초기화
drop SEQUENCE review_id_seq;
drop SEQUENCE streaming_id_seq;
DROP SEQUENCE streaming_info_id_seq;
DROP SEQUENCE user_seq;
drop SEQUENCE record_id_seq;
DROP SEQUENCE notice_num_seq;
DROP SEQUENCE streamer_idx_seq;
DROP SEQUENCE admin_id_seq;
DROP SEQUENCE users_seq;
DROP SEQUENCE board_seq;
DROP SEQUENCE ranking_id_seq;
DROP SEQUENCE preferences_id_seq;
DROP SEQUENCE visitor_id_seq;
DROP SEQUENCE streamer_rating_id_seq;


DROP SEQUENCE test_pref_seq;
DROP SEQUENCE main_carousel_test_seq;

commit;