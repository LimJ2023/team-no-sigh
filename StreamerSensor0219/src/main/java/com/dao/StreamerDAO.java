package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.Streamer;
import com.mapper.StreamerMapper;

@Repository
public class StreamerDAO {
	
	@Autowired
	StreamerMapper mapper;
	
	public Streamer getStreamer(int streamer_num) {
		return mapper.getStreamer(streamer_num);
	}
}
