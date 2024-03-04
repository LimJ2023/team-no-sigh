package com.domain;

import java.awt.Image;

import org.springframework.web.multipart.MultipartFile;

public class Ranking {

	private int ranking_id;
	private String rank_date;
	private int rank_place;
	private String rank_method;
	private int streaming_id;
	
	private String streamer_id;

	
	//-------------
	
	private int streamer_idx;
	//private String strm_id;
	private String streamer_gender;
	private String streamer_grade;
	private String streamer_status;
	private String streamer_platform;
	private int streamer_followers;
	
	private String streaming_description;
	private String streaming_category;
	private String streaming_date;
	
	//***************
	private String video_id;
	
	//******
	private String thumbnail_url;
	private Image thumbImage;
	
	
	private int avg_viewers;
	private long likes;
	private long comments;
	private int daily_viewers;
	
	
	public int getRanking_id() {
		return ranking_id;
	}
	public void setRanking_id(int ranking_id) {
		this.ranking_id = ranking_id;
	}
	public String getRank_date() {
		return rank_date;
	}
	public void setRank_date(String rank_date) {
		this.rank_date = rank_date;
	}
	public int getRank_place() {
		return rank_place;
	}
	public void setRank_place(int rank_place) {
		this.rank_place = rank_place;
	}
	public String getRank_method() {
		return rank_method;
	}
	public void setRank_method(String rank_method) {
		this.rank_method = rank_method;
	}
	public int getStreaming_id() {
		return streaming_id;
	}
	public void setStreaming_id(int streaming_id) {
		this.streaming_id = streaming_id;
	}
	public String getStreamer_id() {
		return streamer_id;
	}
	public void setStreamer_id(String streamer_id) {
		this.streamer_id = streamer_id;
	}
	public int getStreamer_idx() {
		return streamer_idx;
	}
	public void setStreamer_idx(int streamer_idx) {
		this.streamer_idx = streamer_idx;
	}
	public String getStreamer_gender() {
		return streamer_gender;
	}
	public void setStreamer_gender(String streamer_gender) {
		this.streamer_gender = streamer_gender;
	}
	public String getStreamer_grade() {
		return streamer_grade;
	}
	public void setStreamer_grade(String streamer_grade) {
		this.streamer_grade = streamer_grade;
	}
	public String getStreamer_status() {
		return streamer_status;
	}
	public void setStreamer_status(String streamer_status) {
		this.streamer_status = streamer_status;
	}
	public String getStreamer_platform() {
		return streamer_platform;
	}
	public void setStreamer_platform(String streamer_platform) {
		this.streamer_platform = streamer_platform;
	}
	public int getStreamer_followers() {
		return streamer_followers;
	}
	public void setStreamer_followers(int streamer_followers) {
		this.streamer_followers = streamer_followers;
	}
	public String getStreaming_description() {
		return streaming_description;
	}
	public void setStreaming_description(String streaming_description) {
		this.streaming_description = streaming_description;
	}
	public String getStreaming_category() {
		return streaming_category;
	}
	public void setStreaming_category(String streaming_category) {
		this.streaming_category = streaming_category;
	}
	public String getStreaming_date() {
		return streaming_date;
	}
	public void setStreaming_date(String streaming_date) {
		this.streaming_date = streaming_date;
	}
	public int getAvg_viewers() {
		return avg_viewers;
	}
	public void setAvg_viewers(int avg_viewers) {
		this.avg_viewers = avg_viewers;
	}
	public long getLikes() {
		return likes;
	}
	public void setLikes(long likes) {
		this.likes = likes;
	}
	public long getComments() {
		return comments;
	}
	public void setComments(long comments) {
		this.comments = comments;
	}
	public int getDaily_viewers() {
		return daily_viewers;
	}
	public void setDaily_viewers(int daily_viewers) {
		this.daily_viewers = daily_viewers;
	}
	public String getVideo_id() {
		return video_id;
	}
	public void setVideo_id(String video_id) {
		this.video_id = video_id;
	}

	
	//

	

	public String getThumbnail_url() {
		return thumbnail_url;
	}
	public void setThumbnail_url(String thumbnail_url) {
		this.thumbnail_url = thumbnail_url;
	}
	public Image getThumbImage() {
		return thumbImage;
	}
	public void setThumbImage(Image thumbImage) {
		this.thumbImage = thumbImage;
	}
	
	
	
}
	
	