package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.domain.Streamer;

public interface StreamerMapper {
	
	@Select("SELECT streamer_idx, streamer_id, streamer_gender, streamer_grade, "
			+ "streamer_status, streamer_platform, streamer_followers, streamer_img "
			+ "FROM streamer "
			+ "WHERE streamer_idx = #{streamer_idx} ")
	Streamer getStreamer(int streamer_idx);
	
	@Select("SELECT streamer_idx, streamer_followers "
			+ "FROM streamer ")
	List<Streamer> getStreamerFollowers();
}
