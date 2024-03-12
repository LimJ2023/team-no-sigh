package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.domain.Streamer;

@Mapper
public interface MainMapper {

	
	/*@Select("SELECT streamer_idx, streamer_id, streamer_platform, streamer_image FROM streamer WHERE streamer_idx BETWEEN 0 AND 4")
	List<Streamer> getFiveStreamer();*/
	
	@Select("SELECT streamer_idx, streamer_id, streamer_platform, streamer_image FROM streamer WHERE streamer_idx IN (0,1,2,5,6)")
	List<Streamer> getFiveStreamer();
	
	
	/*
	@Select("SELECT s.streamer_idx, si.streamer_id, s.streamer_image "
			+ "FROM streaming_info si "
			+ "INNER JOIN streamer s ON si.streamer_id = s.streamer_id "
			+ "WHERE si.stream_categorys_id IN "
				+ "(SELECT si.stream_categorys_id FROM streaming_info si "
				+ "INNER JOIN preferences p ON p.streamer_id = si.streamer_id "
				+ "WHERE user_id = 'qwer' AND p.favorites = 1) "
			+ "ORDER BY dbms_random.value")
	List<Streamer> getRandomSugg();
	*/
	
	@Select("SELECT s.streamer_idx, s.streamer_id, s.streamer_image "
			+ "FROM streaming_info si "
			+ "INNER JOIN streamer s ON si.streamer_id = s.streamer_id "
			+ "INNER JOIN preferences p ON p.streamer_id = s.streamer_id "
			+ "INNER JOIN users u ON p.user_id = u.user_id "
			+ "WHERE u.user_idx = #{user_idx} AND p.favorites = 1 "
			+ "GROUP BY s.streamer_idx, s.streamer_id, s.streamer_image "
			+ "ORDER BY dbms_random.value")
	List<Streamer> getRandomSugg(@Param("user_idx") int user_idx);
	
}
