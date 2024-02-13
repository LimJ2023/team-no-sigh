package main.java.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.com.domain.Ranking;
import main.java.com.domain.Users;
import main.java.com.service.RankingService;
import main.java.com.service.UsersService;

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
