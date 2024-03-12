package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.Likes;
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
	    int likesByDate;
	    int dailyViewersByDate;
	    if (streamingDate != null) {
	        rankings = rankingService.getRankingByDate(streamingDate);
	        sumAVG = rankingService.getSumAvgByDate(streamingDate);
	        likesByDate = rankingService.getLikesByDate(streamingDate);
	        dailyViewersByDate = rankingService.getDaily_viewersByDate(streamingDate);
	    } else {
	        rankings = rankingService.getRankings(); // 날짜가 선택되지 않았다면 기본 데이터 로드
	        sumAVG = rankingService.getSumAVG();
	        likesByDate = rankingService.getSumLikes();
	        dailyViewersByDate = rankingService.getSumDaily();
	    }
	    model.addAttribute("rankings", rankings);
	    

	    
	    int sumLikes = rankingService.getSumLikes();
	    int sumDaily = rankingService.getSumDaily();
	    
	    model.addAttribute("sumAVG", sumAVG);
	    model.addAttribute("likesByDate", likesByDate);
	    model.addAttribute("dailyViewersByDate", dailyViewersByDate);
	    model.addAttribute("sumLikes", sumLikes);
	    model.addAttribute("sumDaily", sumDaily);
	    
	    return "/leaderBoard/rankPage";
	}
	
	 /*@RequestMapping(value = "/leaderBoard/not_subscribed")
	    public String notSubscribed() {
	        
	        return "/leaderBoard/not_subscribed.jsp";
	    }*/
	
	@PostMapping("/addLike")
	public ResponseEntity<?> addLikes(@RequestParam("userId") String userId,
									@RequestParam("streamerId") String streamerId,
									@RequestParam("stream_categorys_Id") int stream_categorys_Id)	{
		Likes likes = new Likes();
		likes.setUser_id(userId);
		likes.setStreamer_id(streamerId);
		likes.setStream_categorys_id(stream_categorys_Id);
		likes.setFavorites(1);
		
		rankingService.addLikes(likes);
		
		return ResponseEntity.ok().build();
	}
	
	
}
