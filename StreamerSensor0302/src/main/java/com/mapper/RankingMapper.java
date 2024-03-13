package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.domain.Likes;
import com.domain.Ranking;

public interface RankingMapper {
//0109 -> 0312
	@Select("SELECT s.streamer_id, s.streamer_platform,  s.streamer_followers, si.streaming_description, si.streaming_url, sp.avg_viewers, sp.likes, sp.comments, "
			+ "sp.daily_viewers, si.stream_categorys_id, sc.categorys, s.streamer_image, si.streaming_date "
			+ "FROM streamer s "
			+ "INNER JOIN streaming_info si ON si.streamer_id = s.streamer_id "
			+ "INNER JOIN streaming_preference sp ON sp.streaming_id = si.streaming_id "
			+ "INNER JOIN stream_categorys sc ON sc.stream_categorys_id = si.stream_categorys_id "
			+ "WHERE si.streaming_date = TRUNC(SYSDATE) ORDER BY sp.avg_viewers DESC")
	List<Ranking> getRanking();
	@Select("SELECT SUM(avg_viewers) AS sumAVG FROM streaming_preference sp "
			+ "INNER JOIN streaming_info si ON sp.streaming_id = si.streaming_id "
			+ "WHERE si.streaming_date = TRUNC(SYSDATE)")
	int getSumAvg();
	
	@Select("SELECT SUM(avg_viewers) AS sumAVG FROM streaming_preference sp "
			+ "INNER JOIN streaming_info si ON sp.streaming_id = si.streaming_id "
			+ "WHERE si.streaming_date = #{streamingDate}")
	int getSumAvgByDate(@Param("streamingDate") String streamingDate);
	
	@Select("SELECT SUM(likes) AS sumAVG FROM streaming_preference sp "
			+ "INNER JOIN streaming_info si ON sp.streaming_id = si.streaming_id WHERE si.streaming_date= TRUNC(SYSDATE)")
	int getLikes();

	@Select("SELECT SUM(likes) AS sumAVG FROM streaming_preference sp "
			+ "INNER JOIN streaming_info si ON sp.streaming_id = si.streaming_id "
			+ "WHERE si.streaming_date= #{streamingDate}")
	int getLikesByDate(@Param("streamingDate") String streamingDate);
	
	@Select("SELECT SUM(daily_viewers) AS sumAVG FROM streaming_preference sp "
			+ "INNER JOIN streaming_info si ON sp.streaming_id = si.streaming_id WHERE si.streaming_date = TRUNC(SYSDATE)")
	int getDaily_viewers();
	
	@Select("SELECT SUM(daily_viewers) AS sumAVG FROM streaming_preference sp\r\n"
			+ "INNER JOIN streaming_info si ON sp.streaming_id = si.streaming_id WHERE si.streaming_date = #{streamingDate}")
	int getDaily_viewersByDate(@Param("streamingDate") String streamingDate);
	
	@Select("SELECT s.streamer_id, s.streamer_platform, s.streamer_followers, si.streaming_description, si.streaming_url, sp.avg_viewers, sp.likes, sp.comments, "
	        + "sp.daily_viewers, si.stream_categorys_id, sc.categorys, s.streamer_image, si.streaming_date "
	        + "FROM streamer s "
	        + "INNER JOIN streaming_info si ON si.streamer_id = s.streamer_id "
	        + "INNER JOIN streaming_preference sp ON sp.streaming_id = si.streaming_id "
	        + "INNER JOIN stream_categorys sc ON sc.stream_categorys_id = si.stream_categorys_id "
	        + "WHERE si.streaming_date = #{streamingDate} ORDER BY sp.avg_viewers DESC")
	List<Ranking> getRankingByDate(@Param("streamingDate") String streamingDate);

	
	@Insert("INSERT INTO preferences "
			+ "VALUES (PREFERENCES_ID_SEQ.nextval, #{user_id}, #{streamer_id}, null, 1, "
			+ "#{stream_categorys_id}")
	void addLikes(Likes addFavorites);
}
