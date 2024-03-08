package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.domain.StreamInfo;

public interface StreamMapper {

	@Select("select s.streaming_id, s.streamer_id, s.streaming_description, s.streaming_time, c.categorys, s.streaming_date, s.streaming_image "
			+ "from streaming_info s "
			+ "INNER JOIN stream_categorys c ON s.stream_categorys_id = c.stream_categorys_id")
	List<StreamInfo> getAllStreamInfo();
	
	//원하는 스트리머의 방송 정보 가져오기. idx로 구별
		@Select("select s.streaming_id, s.streamer_id, s.streaming_description, s.streaming_time, c.categorys, s.streaming_date, s.streaming_image "
				+ "from streaming_info s "
				+ "INNER JOIN stream_categorys c ON s.stream_categorys_id = c.stream_categorys_id "
				+ "INNER JOIN streamer m ON s.streamer_id = m.streamer_id "
				+ "WHERE m.streamer_idx = #{streamer_idx}")
		List<StreamInfo> getStreamersContent(int streamer_idx);
	 
}