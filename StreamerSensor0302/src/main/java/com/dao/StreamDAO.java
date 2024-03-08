package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.StreamInfo;
import com.mapper.StreamMapper;

@Repository
public class StreamDAO {
	
	@Autowired
	StreamMapper streamMapper;
	
	public List<StreamInfo> getStreamersContent(int streamer_idx){
		List<StreamInfo> list = streamMapper.getStreamersContent(streamer_idx);
		return list;
	}
	public List<StreamInfo> getAllStreamInfo() {
		return streamMapper.getAllStreamInfo();
	}
}