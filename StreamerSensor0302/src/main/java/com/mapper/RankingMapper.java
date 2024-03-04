package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.domain.Ranking;

public interface RankingMapper {

	@Select("SELECT r.ranking_id, r.rank_date, r.rank_place, r.rank_method, r.streaming_id, "
			+ "s.streamer_id, s.streamer_idx, s.streamer_gender, s.streamer_grade, s.streamer_status, s.streamer_platform, s.streamer_followers, "
			+ "si.streaming_description, c.categorys, si.streaming_date, "
			+ "sp.avg_viewers, sp.likes, sp.comments, sp.daily_viewers " + "FROM ranking r "
			+ "INNER JOIN streaming_info si ON si.streaming_id = r.streaming_id "
			+ "INNER JOIN streamer s ON s.streamer_id = si.streamer_id "
			+ "INNER JOIN streaming_preference sp ON sp.streaming_id = si.streaming_id "
			+ "INNER JOIN stream_categorys c ON c.stream_categorys_id = si.stream_categorys_id "
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

}
