package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.domain.StreamInfo;

public interface StreamMapper {

	@Select("select s.streaming_id, s.streamer_id, s.streaming_description, "
			+ "s.streaming_time, s.streaming_category, s.streaming_date, i.img_url "
			+ "from streaming_info s "
			+ "inner join streaming_img i on s.img_id = i.img_id")
	List<StreamInfo> getAllStreamInfo();
	
	//원하는 스트리머의 방송 정보 가져오기. idx로 구별
		@Select("SELECT i.streaming_description, i.streaming_url, i.streaming_time, i.streaming_category, i.streaming_date, m.img_url "
				+ "from streaming_info i "
				+ "INNER JOIN streamer s ON i.streamer_id = s.streamer_id "
				+ "inner join streaming_img m on i.img_id = m.img_id "
				+ "where s.streamer_idx = #{streamer_idx}")
		List<StreamInfo> getStreamersContent(int streamer_idx);
	 
}