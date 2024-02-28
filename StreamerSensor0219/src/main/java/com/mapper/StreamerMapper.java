package com.mapper;

import org.apache.ibatis.annotations.Select;

import com.domain.Streamer;

public interface StreamerMapper {
	
	@Select("SELECT * "
			+ "FROM streamer "
			+ "WHERE streamer_idx = #{streamer_idx} ")
	Streamer getStreamer(int streamer_idx);
}
