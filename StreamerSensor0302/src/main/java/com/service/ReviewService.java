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
import com.domain.StreamerRating;
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
	
	public void insertStreamerRating(int user_idx, int streamer_idx, StreamerRating rating) {
		rating.setUser_idx(user_idx);
		rating.setStreamer_idx(streamer_idx);
		reviewDao.insertStreamerRating(rating);
	}
	
	public List<StreamerRating> getRatingListByStreamerIdx(int streamer_idx){
		return reviewDao.getRatingListByStreamerIdx(streamer_idx);
	}
	
	
	public StreamerRating getRecentRating() {
		return reviewDao.getRecentRating();
	}
	
	public int getCommentCount(int streamer_idx) {
		return reviewDao.getCommentCount(streamer_idx);
	}
	
	public void deleteRatingById(int comment_id) {
		reviewDao.deleteRatingById(comment_id);
	}
	public void insertDeleteRating(StreamerRating rating) {
		reviewDao.insertDeleteRating(rating);
	}
	public List<StreamerRating> getDeleteRatingList(){
		return reviewDao.getDeleteRatingList();
	}
	
}
