DROP TABLE user_review_relation;
DROP TABLE Streaming_preference;
DROP TABLE Preferences;
DROP TABLE Streaming_preference;
DROP TABLE ranking;
DROP TABLE site_stat;
DROP TABLE history;
DROP TABLE review;
DROP TABLE streaming_info;
DROP TABLE streaming_img;
DROP TABLE streamer;
DROP TABLE comments;
DROP TABLE board;
DROP TABLE users;
DROP TABLE admin_notice;
DROP TABLE admin;
DROP TABLE user_table;

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

commit;