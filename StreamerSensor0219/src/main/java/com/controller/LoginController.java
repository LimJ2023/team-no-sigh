package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value = "/user/login_page", method = RequestMethod.GET)
	public String loginPage() {
		return "/user/login_page";
	}

	@RequestMapping(value = "/user/register", method = RequestMethod.GET)
	public String register() {
		return "/user/register";
	}
}
