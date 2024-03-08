package com.domain;

public class StreamInfo {
	
	private int streaming_id;
	private String streamer_id;
	private String streaming_time;
	private String categorys;
	private String streaming_image;
	
	private String streaming_url;
	private String streaming_description;
	
	
	private long viewCount;
	private long likesCount;
	
	
	
	
	
	public String getStreaming_description() {
		return streaming_description;
	}
	public void setStreaming_description(String streaming_description) {
		this.streaming_description = streaming_description;
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
	public int getStreaming_id() {
		return streaming_id;
	}
	public void setStreaming_id(int streaming_id) {
		this.streaming_id = streaming_id;
	}
	public String getStreaming_time() {
		return streaming_time;
	}
	public void setStreaming_time(String streaming_time) {
		this.streaming_time = streaming_time;
	}
	public String getCategorys() {
		return categorys;
	}
	public void setCategorys(String categorys) {
		this.categorys = categorys;
	}
	public String getStreaming_image() {
		return streaming_image;
	}
	public void setStreaming_image(String streaming_image) {
		this.streaming_image = streaming_image;
	}
	
	
}
