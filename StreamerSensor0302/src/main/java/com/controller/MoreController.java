package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MoreController {

	// more페이지
	@RequestMapping(value = "/home/more_page", method = RequestMethod.GET)
	public String morePage() {
		return "/home/more_page";
	}
}
