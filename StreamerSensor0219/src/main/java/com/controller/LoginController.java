package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class LoginController {

	@RequestMapping(value = "/login_page", method = RequestMethod.GET)
	public String loginPage() {
		return "/user/login_page";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "/user/register";
	}
}
