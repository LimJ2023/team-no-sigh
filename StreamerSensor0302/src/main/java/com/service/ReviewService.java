package com.service;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ReviewDAO;
import com.dao.StreamerDAO;
import com.domain.Review;
import com.domain.StreamInfo;
import com.domain.Streamer;
import com.mapper.StreamMapper;

@Service
public class ReviewService {

	@Autowired
	ReviewDAO reviewDao;
	@Autowired
	StreamerDAO streamerDao;
	@Autowired
	StreamMapper streamDao;
	
	public Review getRecentReview() {
		List<Review> list = reviewDao.getRecentReview();
		
		Random rand =  new Random();
		int ranNum = rand.nextInt(list.size());
		Review result = list.get(ranNum);
		
		return result;
	}
	
	public Streamer getStreamerByIdx(int streamer_idx) {
		Streamer streamer = streamerDao.getStreamer(streamer_idx);
		return streamer;
	}
	public List<StreamInfo> getStreamerContentList(int streamer_idx){
		return streamDao.getStreamersContent(streamer_idx);
	}
	
}