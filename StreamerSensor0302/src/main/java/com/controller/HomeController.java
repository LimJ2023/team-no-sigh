package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.Ranking;
import com.domain.Streamer;
import com.domain.Users;
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
	
	//0308이지수 - user_id 불러오기용
	@Autowired
	private Users loginUserBean;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request,
						Model model) {
		
		List<Video> popVideoInfo = rankingService.popVideoApi();
		model.addAttribute("popVideoInfo", popVideoInfo);
		List<Streamer> streamerInfo = mainService.getStreamerInfo();
		model.addAttribute("streamerInfo", streamerInfo);
		
		List<Streamer> fiveStreamer = mainService.getFiveStreamer();
		model.addAttribute("fiveStreamer", fiveStreamer);
		
		List<Streamer> randomSuggestion = mainService.getRandomSugg();
		model.addAttribute("randomSuggestion", randomSuggestion);
	
		/*
		System.out.println("User login status: " + loginUserBean.isUserLogin());
		if(loginUserBean.isUserLogin() && loginUserBean.getUser_id() !=null) {
			String user_id = loginUserBean.getUser_id();
			 System.out.println("Logged in user_id: " + user_id);
			List<Streamer> randomSuggestion = mainService.getRandomSugg(user_id);
			model.addAttribute("randomSuggestion", randomSuggestion);
		}*/
		
		return "redirect:/home"; 
		//return "redirect:/index"; 에서 수정 -> 메인이 안떠서 수정했습니다..(0229 이지수)
	}

	// home 링크를 누르면 index
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home2(Model model) {
		
		List<Video> popVideoInfo = rankingService.popVideoApi();
		model.addAttribute("popVideoInfo", popVideoInfo);
		List<Streamer> streamerInfo = mainService.getStreamerInfo();
		model.addAttribute("streamerInfo", streamerInfo);
	
		List<Streamer> fiveStreamer = mainService.getFiveStreamer();
		model.addAttribute("fiveStreamer", fiveStreamer);
		
		List<Streamer> randomSuggestion = mainService.getRandomSugg();
			        model.addAttribute("randomSuggestion", randomSuggestion);
		
		/*
		System.out.println("User login status: " + loginUserBean.isUserLogin());
		if(loginUserBean.isUserLogin()&& loginUserBean.getUser_id() !=null) {
			String user_id = loginUserBean.getUser_id();
			 System.out.println("Logged in user_id: " + user_id);
			List<Streamer> randomSuggestion = mainService.getRandomSugg(user_id);
			model.addAttribute("randomSuggestion", randomSuggestion);
		}*/
		
		
		return "/home/index";
	}


}
