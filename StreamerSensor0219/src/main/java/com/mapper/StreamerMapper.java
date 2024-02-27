package com.mapper;

import org.apache.ibatis.annotations.Select;

import com.domain.Streamer;

public interface StreamerMapper {
	
	@Select("SELECT * "
			+ "FROM streamer "
			+ "WHERE strm_num = #{streamer_num} ")
	Streamer getStreamer(int streamer_num);
}
