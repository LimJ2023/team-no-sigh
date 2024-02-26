package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.Ranking;
import com.mapper.RankingMapper;

@Repository
public class RankingDAO {
	
	@Autowired
	RankingMapper mapper;
	
	public List<Ranking> getRanking() {
		return mapper.getRanking();
	}
	
	public int getSumAvg() {
		return mapper.getSumAvg();
	}
	public int getLikes() {
		return mapper.getLikes();
	}
	public int getDaily_viewers() {
		return mapper.getDaily_viewers();
	}
}