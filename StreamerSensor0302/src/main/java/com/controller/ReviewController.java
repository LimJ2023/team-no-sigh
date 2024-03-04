package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.StreamInfo;
import com.domain.Streamer;
import com.domain.StreamerRating;
import com.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	ReviewService reviewService;
	
	@GetMapping("/review")
	public String review(@ModelAttribute("streamerRating") StreamerRating streamerRating,
						@RequestParam("streamer_idx") int streamer_idx, 
						Model model) {
		
		
		
		streamerRating.setStreamer_idx(streamer_idx);
		
		Streamer streamer = reviewService.getStreamerByIdx(streamer_idx);
		model.addAttribute("streamer", streamer);
		
		
		List<StreamInfo> streamList = reviewService.getStreamerContentList(streamer_idx);
		model.addAttribute("streamList",streamList);
		
		List<StreamerRating> ratingList = reviewService.getRatingListByStreamerIdx(streamer_idx);
		model.addAttribute("ratingList",ratingList);
		
		model.addAttribute("streamer_idx",streamer_idx);
		
		return "review/review";
	}
	
	@GetMapping("/review_pro")
	public String review_pro(@ModelAttribute("streamerRating") StreamerRating streamerRating,
							Model model) {
		
		int user_idx = streamerRating.getUser_idx();
		int streamer_idx = streamerRating.getStreamer_idx();
		
		
		model.addAttribute("user_idx", 5);
		model.addAttribute("streamer_idx",streamer_idx);
		//인서트 문으로 db에 스트리머에 대한 평가와 별점, 날짜 입력하기
		reviewService.insertStreamerRating(user_idx, streamer_idx, streamerRating);
		
		return "review/review_success";
	}
	
}
