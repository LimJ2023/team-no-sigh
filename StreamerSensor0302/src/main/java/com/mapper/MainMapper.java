package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.domain.Streamer;

@Mapper
public interface MainMapper {

	
	@Select("SELECT streamer_idx, streamer_id, streamer_platform, streamer_image FROM streamer WHERE streamer_idx BETWEEN 0 AND 4")
	List<Streamer> getFiveStreamer();
	
	
}
