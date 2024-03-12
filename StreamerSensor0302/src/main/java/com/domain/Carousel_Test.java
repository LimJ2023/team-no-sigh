package com.domain;

import org.springframework.stereotype.Component;

@Component
public class Carousel_Test {


	private String test_idx;
	private String test_id;
	private String test_status;
	private String test_platform;
	private String test_img;
	public String getTest_idx() {
		return test_idx;
	}
	public void setTest_idx(String test_idx) {
		this.test_idx = test_idx;
	}
	public String getTest_id() {
		return test_id;
	}
	public void setTest_id(String test_id) {
		this.test_id = test_id;
	}
	public String getTest_status() {
		return test_status;
	}
	public void setTest_status(String test_status) {
		this.test_status = test_status;
	}
	public String getTest_platform() {
		return test_platform;
	}
	public void setTest_platform(String test_platform) {
		this.test_platform = test_platform;
	}
	public String getTest_img() {
		return test_img;
	}
	public void setTest_img(String test_img) {
		this.test_img = test_img;
	}
}