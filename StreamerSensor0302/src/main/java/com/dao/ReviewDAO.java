package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.Review;
import com.mapper.ReviewMapper;

@Repository
public class ReviewDAO {
	
	@Autowired
	ReviewMapper mapper;
	
	public List<Review> getReviews(){
		return mapper.getAllReviews();
	}
	public List<Review> getRecentReview() {
		return mapper.getRecentReivew();
	}
}
