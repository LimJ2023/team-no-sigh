package com.mapper;

import org.apache.ibatis.annotations.Select;

import com.domain.StreamInfo;

public interface StreamMapper {

	@Select("select s.streaming_id, s.strm_id, s.streaming_desc, "
			+ "s.streaming_time, s.streaming_category, s.streaming_date, i.img_url "
			+ "from streaming_info s "
			+ "inner join streaming_img i on s.img_id = i.img_id")
	StreamInfo getAllStreamInfo();
	 
}
