package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RankingDAO;
import com.dao.RankingDAO;
import com.domain.Ranking;

@Service
public class RankingService {

	
	@Autowired
	RankingDAO rankingDAO;
	
	public List<Ranking> getRankings() {
		return rankingDAO.getRanking();
	}
	
	public int getSumAVG() {
		return rankingDAO.getSumAvg();
	}
	
	public int getSumLikes() {
		return rankingDAO.getLikes();
	}
	
	public int getSumDaily() {
		return rankingDAO.getDaily_viewers();
	}

	
	
}
