package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.Ranking;
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
	public String leaderBoardPage(@RequestParam(value = "streaming_date", required = false) String streamingDate, Model model) {
	    List<Ranking> rankings;
	    int sumAVG;
	    if (streamingDate != null) {
	        rankings = rankingService.getRankingByDate(streamingDate);
	        sumAVG = rankingService.getSumAvgByDate(streamingDate);
	    } else {
	        rankings = rankingService.getRankings(); // 날짜가 선택되지 않았다면 기본 데이터 로드
	        sumAVG = rankingService.getSumAVG();
	    }
	    model.addAttribute("rankings", rankings);
	    
	    
	    
	    
	    int sumLikes = rankingService.getSumLikes();
	    int sumDaily = rankingService.getSumDaily();
	    
	    model.addAttribute("sumAVG", sumAVG);
	    model.addAttribute("sumLikes", sumLikes);
	    model.addAttribute("sumDaily", sumDaily);
	    
	    return "/leaderBoard/rankPage";
	}
	/*
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
		
		
	}*/
	
	
	
}
