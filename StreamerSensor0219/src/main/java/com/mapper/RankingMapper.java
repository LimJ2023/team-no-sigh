package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.domain.Ranking;

public interface RankingMapper {

	@Select("SELECT r.ranking_id, r.rank_date, r.rank_place, r.rank_method, r.streaming_id, "
			+ "s.streamer_id, s.streamer_idx, s.streamer_gender, s.streamer_grade, s.streamer_status, s.streamer_platform, s.streamer_followers, "
			+ "si.streaming_description, si.streaming_category, si.streaming_date, "
			+ "sp.avg_viewers, sp.likes, sp.comments, sp.daily_viewers " + "FROM ranking r "
			+ "INNER JOIN streaming_info si ON si.streaming_id = r.streaming_id "
			+ "INNER JOIN streamer s ON s.streamer_id = si.streamer_id "
			+ "INNER JOIN streaming_preference sp ON sp.streaming_id = si.streaming_id "
			+ "WHERE rank_date = '2024-01-09' ORDER BY r.rank_place ASC")
	List<Ranking> getRanking();

	@Select("SELECT SUM(avg_viewers) AS sumAVG " + "FROM streaming_preference sp "
			+ "INNER JOIN ranking r ON sp.streaming_id = r.streaming_id " + "WHERE r.rank_date = '2024-01-09'")
	int getSumAvg();

	@Select("SELECT SUM(likes) AS sumAVG " + "FROM streaming_preference sp "
			+ "INNER JOIN ranking r ON sp.streaming_id = r.streaming_id " + "WHERE r.rank_date = '2024-01-09'")
	int getLikes();

	@Select("SELECT SUM(daily_viewers) AS sumAVG " + "FROM streaming_preference sp "
			+ "INNER JOIN ranking r ON sp.streaming_id = r.streaming_id " + "WHERE r.rank_date = '2024-01-09'")
	int getDaily_viewers();

	/*
	 * //20240227 이지수 - api - DB 입력 테스트
	 * 
	 * @Insert("INSERT INTO streaming_img " + "VALUES (img_id_seq_test.nextval, " +
	 * "#{videoThumbUrl}")
	 */

	// 20240227 이지수 api-db 입력 테스트
	/*
	 * @Insert("INSERT INTO streaming_info(streaming_id, streaming_description)" +
	 * "VALUES (streaming_id_test_seq.nextval, #{streaming_description}") void
	 * addVideoInfo(List<Ranking> videoRankingBean);
	 */

}
