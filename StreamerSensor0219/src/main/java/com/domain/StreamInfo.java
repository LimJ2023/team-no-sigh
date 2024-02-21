package com.domain;

import java.util.Date;

public class StreamInfo {
	
	private String user_id;
	private String strm_id;
	private String streaming_desc;
	private String writing_data;
	private int review_rating;
	private Date review_creation_date;
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getStrm_id() {
		return strm_id;
	}
	public void setStrm_id(String strm_id) {
		this.strm_id = strm_id;
	}
	public String getStreaming_desc() {
		return streaming_desc;
	}
	public void setStreaming_desc(String streaming_desc) {
		this.streaming_desc = streaming_desc;
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
	
	
}
