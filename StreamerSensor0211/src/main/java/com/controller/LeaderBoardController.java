package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.Ranking;
import com.domain.Users;
import com.service.RankingService;
import com.service.UsersDAO;
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
		Ranking ranking = rankingService.getRanking();
		List<Ranking> rankings = rankingService.getRankings();
		
		model.addAttribute("users", users);
		model.addAttribute("ranking", ranking);
		model.addAttribute("rankings", rankings);
		
		return "/leaderBoard/rankPage";
	}
	
	
}
