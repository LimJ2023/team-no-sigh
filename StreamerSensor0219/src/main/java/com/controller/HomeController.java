package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.domain.Ranking;
import com.domain.Streamer;
import com.domain.Video;
import com.service.MainService;
import com.service.RankingService;

@Controller
public class HomeController {

	//0229 이지수 - 방송 정보 API용
	@Autowired
	RankingService rankingService;
	@Autowired
	MainService mainService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request,
						Model model) {
		
		List<Ranking> popVideoInfo = rankingService.getRankings();
		model.addAttribute("popVideoInfo", popVideoInfo);
		List<Streamer> streamerInfo = mainService.getStreamerInfo();
		model.addAttribute("streamerInfo", streamerInfo);
		
		return "redirect:/index";
	}

	// home 링크를 누르면 index
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home2(Model model) {
		
		List<Video> popVideoInfo = rankingService.popVideoApi();
		model.addAttribute("popVideoInfo", popVideoInfo);
		List<Streamer> streamerInfo = mainService.getStreamerInfo();
		model.addAttribute("streamerInfo", streamerInfo);
		
		return "/home/index";
	}


}
