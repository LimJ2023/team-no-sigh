package com.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.domain.Ranking;
import com.domain.Users;
import com.service.RankingService;
import com.service.UsersService;

@Controller
public class LeaderBoardController {

	
	@Autowired
	UsersService uService;
	@Autowired
	RankingService rankingService;
	
	@RequestMapping(value = "/leaderBoard")
	public String leaderBoardPage(Model model) throws IOException {
		
		Users users = uService.getUsers();
		List<Ranking> rankings = rankingService.getRankings();
		
		int sumAVG = rankingService.getSumAVG();
		int sumLikes = rankingService.getSumLikes();
		
		int sumDaily = rankingService.getSumDaily();
		
	//	List<Ranking> liveRanking = rankingService.liveApi();
		
		List<Ranking> videoRanking = rankingService.liveApi();
		
		
		model.addAttribute("users", users);
		model.addAttribute("rankings", rankings);
		model.addAttribute("sumAVG", sumAVG);
		model.addAttribute("sumLikes", sumLikes);
		
		model.addAttribute("sumDaily", sumDaily);
		
	//	model.addAttribute("liveRanking", liveRanking);
		model.addAttribute("videoRanking", videoRanking);
		
		return "/leaderBoard/rankPage";
	}
	
	
	
}
