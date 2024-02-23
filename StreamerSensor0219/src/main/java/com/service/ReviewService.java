package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ReviewDAO;
import com.domain.Review;

@Service
public class ReviewService {

	@Autowired
	ReviewDAO dao;
	
	public Review getRecentReview() {
		Review review = dao.getReviews().get(0);
		System.out.println(review.getImg_url());
		return review;
	}
	
}
