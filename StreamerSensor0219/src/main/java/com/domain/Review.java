package com.domain;

import java.util.Date;

public class Review {
	
	private String user_id;
	private String streamer_id;
	private String streaming_description;
	private String writing_data;
	private int review_rating;
	private Date review_creation_date;
	private String img_url;
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getWriting_data() {
		return writing_data;
	}
	public void setWriting_data(String writing_data) {
		this.writing_data = writing_data;
	}
	public int getReview_rating() {
		return review_rating;
	}
	public void setReview_rating(int review_rating) {
		this.review_rating = review_rating;
	}
	public Date getReview_creation_date() {
		return review_creation_date;
	}
	public void setReview_creation_date(Date review_creation_date) {
		this.review_creation_date = review_creation_date;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getStreaming_description() {
		return streaming_description;
	}
	public void setStreaming_description(String streaming_description) {
		this.streaming_description = streaming_description;
	}
	public String getStreamer_id() {
		return streamer_id;
	}
	public void setStreamer_id(String streamer_id) {
		this.streamer_id = streamer_id;
	}
	
	
	
	
}
