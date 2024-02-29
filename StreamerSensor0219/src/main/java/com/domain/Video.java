package com.domain;

import java.awt.Image;

//0229 이지수
public class Video {

	private String video_title;
	
	private String video_id;
	private String thumbnail_url;
	private Image thumbImage;
	
	private int avg_viewers;
	private long video_like_count;
	private long video_comment_count;
	
	private String likes_not_available;
	
	
	public String getVideo_title() {
		return video_title;
	}
	public void setVideo_title(String video_title) {
		this.video_title = video_title;
	}
	public String getVideo_id() {
		return video_id;
	}
	public void setVideo_id(String video_id) {
		this.video_id = video_id;
	}
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
	public int getAvg_viewers() {
		return avg_viewers;
	}
	public void setAvg_viewers(int avg_viewers) {
		this.avg_viewers = avg_viewers;
	}
	public long getVideo_like_count() {
		return video_like_count;
	}
	public void setVideo_like_count(long video_like_count) {
		this.video_like_count = video_like_count;
	}
	public long getVideo_comment_count() {
		return video_comment_count;
	}
	public void setVideo_comment_count(long video_comment_count) {
		this.video_comment_count = video_comment_count;
	}
	public String getLikes_not_available() {
		return likes_not_available;
	}
	public void setLikes_not_available(String likes_not_available) {
		this.likes_not_available = likes_not_available;
	}
	
	
	
}
