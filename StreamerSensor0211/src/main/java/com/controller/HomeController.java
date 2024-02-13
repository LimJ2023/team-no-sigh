package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "/home/index";
	}

	// home 링크를 누르면 index
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home2() {
		return "/home/index";
	}

	// 트렌드 화면
	@RequestMapping(value = "/trend", method = RequestMethod.GET)
	public String trend() {
		return "/home/trend";
	}
}
