package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.GradeCount;
import com.domain.SiteInfo;
import com.domain.Streamer;
import com.mapper.StreamerMapper;

@Repository
public class StreamerDAO {
	
	@Autowired
	StreamerMapper streamermapper;
	
	public Streamer getStreamer(int streamer_idx) {
		return streamermapper.getStreamer(streamer_idx);
	}
	
	public List<Streamer> getStreamerFollowers() {
		return streamermapper.getStreamerFollowers();
	}
	
	public List<GradeCount> getGradeCount(){
		return streamermapper.getGradeCount();
	}
	
	public List<SiteInfo> getSiteStatDate(){
		return streamermapper.getSiteStatDate();
	}
}
