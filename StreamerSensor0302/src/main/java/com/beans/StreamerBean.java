package com.beans;

import org.springframework.stereotype.Component;

@Component
public class StreamerBean {
	
	Integer streamer_idx;
	String streamer_id;
	String streamer_gender;
	String streamer_grade;
	String streamer_status;
	String streamer_platform;
	Integer streamer_followers;
	
	public Integer getStreamer_idx() {
		return streamer_idx;
	}
	public void setStreamer_idx(Integer streamer_idx) {
		this.streamer_idx = streamer_idx;
	}
	public String getStreamer_id() {
		return streamer_id;
	}
	public void setStreamer_id(String streamer_id) {
		this.streamer_id = streamer_id;
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
	public Integer getStreamer_followers() {
		return streamer_followers;
	}
	public void setStreamer_followers(Integer streamer_followers) {
		this.streamer_followers = streamer_followers;
	}

}