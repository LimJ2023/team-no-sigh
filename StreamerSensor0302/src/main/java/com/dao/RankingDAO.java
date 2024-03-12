package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.Likes;
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
	
	public int getSumAvgByDate(String streamingDate) {
		return mapper.getSumAvgByDate(streamingDate);
	}
	public int getLikes() {
		return mapper.getLikes();
	}
	public int getDaily_viewers() {
		return mapper.getDaily_viewers();
	}
	
	/*//20240227 이지수 DB-API
	public void addVideoInfo(List<Ranking> videoRankingBean) {
		mapper.addVideoInfo(videoRankingBean);
	}*/
	public List<Ranking> getRankingByDate(String streamingDate) {
	    return mapper.getRankingByDate(streamingDate);
	}
	
	public void addLikes(Likes addFavorites) {
		mapper.addLikes(addFavorites);
	}
	
	public int getLikesByDate(String streamingDate) {
		return mapper.getLikesByDate(streamingDate);
	}
	
	public int getDaily_viewersByDate(String streamingDate) {
		return mapper.getDaily_viewersByDate(streamingDate);
	}
	
}
