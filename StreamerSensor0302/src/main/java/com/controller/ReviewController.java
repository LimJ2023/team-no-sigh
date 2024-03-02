package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.StreamInfo;
import com.domain.Streamer;
import com.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	ReviewService reviewService;
	
	@GetMapping("/review")
	public String review(@RequestParam("streamer_idx") int streamer_idx, Model model) {
		
		Streamer streamer = reviewService.getStreamerByIdx(streamer_idx);
		
		model.addAttribute("streamer", streamer);
		
		
		List<StreamInfo> streamList = reviewService.getStreamerContentList(streamer_idx);
		model.addAttribute("streamList",streamList);
		return "review/review";
	}
	
}
