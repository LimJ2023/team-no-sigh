# team-no-sigh
2차 프로젝트 시작입니다.

스트리머 추천해주는 웹애플리케이션(사이트) 제작

-------------------------
초기 세팅 :
system 계정을 이용하여 streamer 계정을 만듭니다.

----코드----
create user streamer IDENTIFIED By 12345;
grant connect, resource to streamer;
grant create view, create sequence, create procedure to streamer;
ALTER USER streamer DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;
------------
