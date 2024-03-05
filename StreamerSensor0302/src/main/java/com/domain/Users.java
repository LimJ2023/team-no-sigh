package com.domain;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

public class Users {

	public Users() {
	      this.userIdExist = false;
	      this.userLogin = false;
	   }

	   private MultipartFile upload_file;
	   private int user_idx;

		@Size(min = 2, max = 4)
		@Pattern(regexp = "[가-힣]*") // 한글 문자
		// =한글로 써라.
		private String user_name;

		@Size(min = 2, max = 20)
		@Pattern(regexp = "[a-zA-Z0-9]*") // 영어 또는 숫자만
		private String user_id;

		@Size(min = 2, max = 20)
		@Pattern(regexp = "[a-zA-Z0-9]*")
		private String user_pw;

		@Size(min = 2, max = 20)
		@Pattern(regexp = "[a-zA-Z0-9]*")
		private String user_pw2;
		
		private String user_gender; //성별
		
		private int user_age; //나이
		
		private String user_nation; //국적
		
		
		private String user_image; //사용자 이미지
		
		

		private boolean userIdExist; // 아이디가 존재하는지

		private boolean userLogin; // 로그인이 되었는지 로그인 유무

	   //0304 이지수
	   private String subscription;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public int getUser_age() {
		return user_age;
	}

	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}

	public String getUser_nation() {
		return user_nation;
	}

	public void setUser_nation(String user_nation) {
		this.user_nation = user_nation;
	}

	public String getSubscription() {
		return subscription;
	}

	public void setSubscription(String subscription) {
		this.subscription = subscription;
	}

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public MultipartFile getUpload_file() {
		return upload_file;
	}

	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}

	public String getUser_image() {
		return user_image;
	}

	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}

	public String getUser_pw2() {
		return user_pw2;
	}

	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
	}

	public boolean isUserIdExist() {
		return userIdExist;
	}

	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}

	public boolean isUserLogin() {
		return userLogin;
	}

	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}

}
