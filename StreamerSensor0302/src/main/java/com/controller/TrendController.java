package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.domain.StreamInfo;
import com.service.TrendService;

@Controller
public class TrendController {
	
	@Autowired
	TrendService trendService;
	// 트렌드 화면
		@RequestMapping(value = "/trend", method = RequestMethod.GET)
		public String trend(Model model) {
			
			List<StreamInfo> streamList = trendService.getAllStreams();
			
			model.addAttribute("streamList",streamList);
			
			return "/home/trend";
		}
}
