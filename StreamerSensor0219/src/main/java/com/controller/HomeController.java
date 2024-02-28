package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.domain.Ranking;
import com.domain.Streamer;
import com.service.MainService;
import com.service.RankingService;

@Controller
public class HomeController {

	//0228 이지수: 인기 방송 API 로 불러오기용
	@Autowired
	RankingService rankingService;
	
	@Autowired
	MainService mainService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
					//0228 이지수 추가(Model)
		
		
		//0228 이지수: 홈화면 최고인기 방송 불러오기
		List<Ranking> popVideoInfo = rankingService.popVideoApi();
		model.addAttribute("popVideoInfo", popVideoInfo);
		//0228 이지수: 홈화면 스트리머1(머독) 정보 불러오기
		List<Streamer> streamerInfo = mainService.getStreamerInfo();
		model.addAttribute("streamerInfo", streamerInfo);
		//
		
		return "/home/index";
	}

	// home 링크를 누르면 index
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home2(Model model) {
				//0228 이지수 추가 
		List<Ranking> popVideoInfo = rankingService.popVideoApi();
		model.addAttribute("popVideoInfo", popVideoInfo);
		List<Streamer> streamerInfo = mainService.getStreamerInfo();
		model.addAttribute("streamerInfo", streamerInfo);
		
		
		return "/home/index";
	}

	
}
