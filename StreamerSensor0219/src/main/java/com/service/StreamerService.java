package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.StreamerDAO;
import com.domain.Streamer;

@Service
public class StreamerService {
	
	@Autowired
	private StreamerDAO streamerDAO;
	
	public List<Streamer> getStreamerFollowers() {
		return streamerDAO.getStreamerFollowers();
	}
	
}
