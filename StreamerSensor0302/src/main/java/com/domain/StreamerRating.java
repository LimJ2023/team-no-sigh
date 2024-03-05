package com.domain;

public class StreamerRating {

	private int user_idx;
	private int streamer_idx;
	private String rating_comment;
	private int streamer_rating;
	private String streamer_rating_date;
	private String user_name;
	private String user_image;
	private String img_url;
	
	
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	public int getStreamer_idx() {
		return streamer_idx;
	}
	public void setStreamer_idx(int streamer_idx) {
		this.streamer_idx = streamer_idx;
	}
	public String getStreamer_rating_date() {
		return streamer_rating_date;
	}
	public void setStreamer_rating_date(String streamer_rating_date) {
		this.streamer_rating_date = streamer_rating_date;
	}
	public int getStreamer_rating() {
		return streamer_rating;
	}
	public void setStreamer_rating(int streamer_rating) {
		this.streamer_rating = streamer_rating;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_image() {
		return user_image;
	}
	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}
	public String getRating_comment() {
		return rating_comment;
	}
	public void setRating_comment(String rating_comment) {
		this.rating_comment = rating_comment;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	
	
	
}
