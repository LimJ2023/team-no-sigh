--2024-1월-11월의 방송의 순위, 스트리머 이름
SELECT r.rank_date 날짜, r.rank_place 순위, r.rank_method 집계방식, s.strm_name 이름
FROM RANKING R
INNER JOIN STREAMER s on r.strm_id = s.strm_id
where rank_date = '2024-01-11'
and rank_place between 1 and 3;

--임요한이 한 방송제목,날짜, 리뷰내용,점수,리뷰작성날짜 출력
select s.strm_name, i.streaming_desc, i.streaming_date, 
    r.writing_data, r.review_rating, r.review_creation_date
FROM streamer s
INNER JOIN streaming_storage st on s.strm_id = st.strm_id
INNER JOIN streaming_info i on i.storage_id = st.storage_id
INNER JOIN review r on r.review_content_id = i.streaming_id
WHERE s.strm_name like '임요한';


-----리뷰작성자,작성내용,날짜 출력
select u.user_name, r.writing_data, r.review_creation_date
from review r
INNER JOIN users u on r.user_id = u.user_id;

--방송 순위, 스트리머 이름, 플랫폼, 랭크날짜
SELECT r.rank_place 순위, s.strm_name 스트리머, s.strm_platform 플랫폼, r.rank_date 랭크인날짜
FROM ranking r
INNER JOIN streamer s ON s.strm_id = r.strm_id;


--[1위를 한 적이 있는 방송의] 방송 순위, 스트리머 이름, 플랫폼, 랭크날짜
SELECT r.rank_place 순위, s.strm_name 스트리머, s.strm_platform 플랫폼, r.rank_date 랭크인날짜
FROM ranking r
INNER JOIN streamer s ON s.strm_id = r.strm_id
WHERE r.rank_place = 1;



