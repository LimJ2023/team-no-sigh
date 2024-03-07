package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TrendController {
	
	// 트렌드 화면
		@RequestMapping(value = "/trend", method = RequestMethod.GET)
		public String trend() {
			
			return "/home/trend";
		}
}
