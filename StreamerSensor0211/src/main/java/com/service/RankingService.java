package main.java.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.java.com.domain.Ranking;

@Service
public class RankingService {

	@Autowired
	RankingDAO rankingDAO;
	
	public Ranking getRanking() {
		
		Ranking rankingBean = new Ranking();
		rankingBean = rankingDAO.select_ranking().get(0);
		return rankingBean;
		
	}
	
	public List<Ranking> getRankings() {
		return rankingDAO.select_ranking();
	}
	
}
