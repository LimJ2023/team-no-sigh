package com.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import com.domain.Admin;
import com.domain.Users;

@Configuration
public class RootAppContext {
	
	@Bean("adminBean")
	@SessionScope
	public Admin adminBean() {
		return new Admin();
	}
	
	@Bean("loginUserBean")
	@SessionScope
	public Users loginUserBean() {
		return new Users();
	}
	
	@Bean("selectUserImage")
	@SessionScope
	public Users selectUserImage() {
		return new Users();
	}
	
}
