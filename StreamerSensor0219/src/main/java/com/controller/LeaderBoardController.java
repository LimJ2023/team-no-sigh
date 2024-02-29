package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.domain.Ranking;
import com.domain.Streamer;
import com.domain.Users;
import com.domain.Video;
import com.service.RankingService;
import com.service.UsersService;

@Controller
public class LeaderBoardController {

	
	@Autowired
	UsersService uService;
	@Autowired
	RankingService rankingService;
	
	@RequestMapping(value = "/leaderBoard")
	public String leaderBoardPage(Model model) {
		
		Users users = uService.getUsers();
		List<Ranking> rankings = rankingService.getRankings();
		
		int sumAVG = rankingService.getSumAVG();
		int sumLikes = rankingService.getSumLikes();
		
		int sumDaily = rankingService.getSumDaily();
		
		model.addAttribute("users", users);
		model.addAttribute("rankings", rankings);
		model.addAttribute("sumAVG", sumAVG);
		model.addAttribute("sumLikes", sumLikes);
		
		model.addAttribute("sumDaily", sumDaily);
		
		//20240227이지수
		List<Video> popVideoInfo = rankingService.popVideoApi();
		model.addAttribute("popVideoInfo", popVideoInfo);
		//
		
		return "/leaderBoard/rankPage";
		
		
	}
	
	
	
	
}
