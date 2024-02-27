package com.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import com.beans.UserBean;
import com.domain.Admin;

@Configuration
public class RootAppContext {
	
	@Bean("adminBean")
	@SessionScope
	public Admin adminBean() {
		return new Admin();
	}
	
	@Bean("loginUserBean")
	@SessionScope
	public UserBean loginUserBean() {
		return new UserBean();
	}
}
