package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.domain.Ranking;

@Service
public class RankingService {

	
	@Autowired
	RankingDAO rankingDAO;
	
	public List<Ranking> getRankings() {
		return rankingDAO.select_ranking();
	}
	
	public int getSumAVG() {
		return rankingDAO.getSumAVG();
	}
	
	public int getSumLikes() {
		return rankingDAO.getSumLikes();
	}
	
	public int getSumDaily() {
		return rankingDAO.getSumDaily();
	}

	
	
}
