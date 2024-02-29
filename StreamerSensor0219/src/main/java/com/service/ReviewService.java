package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ReviewDAO;
import com.dao.StreamerDAO;
import com.domain.Review;
import com.domain.Streamer;

@Service
public class ReviewService {

	@Autowired
	ReviewDAO reviewDao;
	@Autowired
	StreamerDAO streamerDao;
	
	
	public Review getRecentReview() {
		Review review = reviewDao.getReviews().get(0);
		return review;
	}
	
	public Streamer getStreamerByIdx(int streamer_idx) {
		Streamer streamer = streamerDao.getStreamer(streamer_idx);
		return streamer;
	}
	
}
