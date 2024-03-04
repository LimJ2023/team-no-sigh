package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.domain.Streamer;

public interface StreamerMapper {
	
	@Select("SELECT s.streamer_idx, s.streamer_id, s.streamer_gender, s.streamer_grade, "
			+ "s.streamer_status, s.streamer_platform, s.streamer_followers, i.img_url "
			+ "FROM streamer s "
			+ "INNER JOIN streaming_img i ON s.streamer_img = i.img_id "
			+ "WHERE streamer_idx = #{streamer_idx} ")
	Streamer getStreamer(int streamer_idx);
	
	@Select("SELECT streamer_idx, streamer_followers "
			+ "FROM streamer ")
	List<Streamer> getStreamerFollowers();
}
