SELECT * FROM streamer;
SELECT * FROM main_carousel_test;

CREATE SEQUENCE main_carousel_test_seq
 START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    ORDER
    NOCACHE;

DROP TABLE main_carousel_test;
CREATE TABLE main_carousel_test(
test_idx NUMBER,
test_id VARCHAR2(40),
test_status VARCHAR2(30),
test_platform VARCHAR2(40),
test_img NUMBER
);

INSERT INTO main_carousel_test VALUES(3, '머독', '온라인', '유튜브', 280);

INSERT INTO main_carousel_test VALUES(1, '김지섭', '오프라인', '유튜브', 281);
INSERT INTO main_carousel_test VALUES(2, '기타히어로', '오프라인', '유튜브', 282);
INSERT INTO main_carousel_test VALUES(4, '임요한', '온라인', '치지직', 283);
INSERT INTO main_carousel_test VALUES(0, '감스트', '온라인', '아프리카', 284);

commit;

SELECT * FROM main_carousel_test;
SELECT * FROM users;
SELECT * FROM preferences;
SELECT test_idx, test_id, test_status, test_platform, test_img FROM main_carousel_test;

CREATE SEQUENCE test_pref_seq
 START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    ORDER
    NOCACHE;
    

SELECT * FROM users;
CREATE TABLE test_pref(
user_idx number PRIMARY KEY,
likes_coding NUMBER DEFAULT 0,
likes_game NUMBER DEFAULT 0,
likes_cooking NUMBER DEFAULT 0);

SELECT * FROM test_pref;
INSERT INTO test_pref (user_idx) VALUES(3);

SELECT * FROM streaming_info;

DROP TABLE test_category;
CREATE TABLE test_category(
stream_categorys_id NUMBER,
category_name VARCHAR2(40)
);

INSERT INTO test_category VALUES(1, 'game');
INSERT INTO test_category VALUES(6, 'coding');
INSERT INTO test_category VALUES(7, 'sports');


CREATE TABLE test_user_streaming_likes(
user_idx NUMBER,
streaming_id NUMBER,
liked NUMBER(1) DEFAULT 0,
PRIMARY KEY(user_idx, streaming_id),
FOREIGN KEY(user_idx) REFERENCES users(user_idx),
FOREIGN KEY(streaming_id) REFERENCES streaming_info(streaming_id)
);

commit;