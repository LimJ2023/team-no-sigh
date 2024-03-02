package com.service;

import java.util.List;

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
		Review review = reviewDao.getReviews().get(0);
		return review;
	}
	
	public Streamer getStreamerByIdx(int streamer_idx) {
		Streamer streamer = streamerDao.getStreamer(streamer_idx);
		return streamer;
	}
	public List<StreamInfo> getStreamerContentList(int streamer_idx){
		return streamDao.getStreamersContent(streamer_idx);
	}
	
}
