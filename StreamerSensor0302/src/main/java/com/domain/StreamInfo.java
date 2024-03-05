package com.domain;

public class StreamInfo {
	
	private String user_id;
	private String streamer_id;
	private String streaming_url;
	private String streaming_description;
	private String writing_data;
	private String img_url;
	
	private long viewCount;
	private long likesCount;
	
	
	
	
	
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
	public String getStreaming_description() {
		return streaming_description;
	}
	public void setStreaming_description(String streaming_description) {
		this.streaming_description = streaming_description;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public long getViewCount() {
		return viewCount;
	}
	public void setViewCount(long viewCount) {
		this.viewCount = viewCount;
	}
	public long getLikesCount() {
		return likesCount;
	}
	public void setLikesCount(long likesCount) {
		this.likesCount = likesCount;
	}
	public String getStreamer_id() {
		return streamer_id;
	}
	public void setStreamer_id(String streamer_id) {
		this.streamer_id = streamer_id;
	}
	public String getStreaming_url() {
		return streaming_url;
	}
	public void setStreaming_url(String streaming_url) {
		this.streaming_url = streaming_url;
	}
	
	
}
