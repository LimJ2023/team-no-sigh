package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.domain.Ranking;
import com.mapper.RankingMapper;

@Component
public class RankingDAO {

	@Autowired
	private JdbcTemplate db;
	@Autowired
	RankingMapper rankingMapper;

	
	public List<Ranking> select_ranking(){
		
		//String sql = "SELECT * FROM ranking r INNER JOIN streaming_info si ON si.streaming_id = r.streaming_id INNER JOIN streamer s ON s.strm_id = si.strm_id WHERE rank_date = '2024-01-09' ORDER BY r.rank_place ASC";
		String sql = "SELECT * FROM ranking r INNER JOIN streaming_info si ON si.streaming_id = r.streaming_id INNER JOIN streamer s ON s.strm_id = si.strm_id INNER JOIN streaming_preference sp ON sp.streaming_id = si.streaming_id WHERE rank_date = '2024-01-09' ORDER BY r.rank_place ASC";
		List<Ranking> ranking = db.query(sql, rankingMapper);
		return ranking;
	}
	
	
	public int getSumAVG() {
		String sql = "SELECT SUM(avg_viewers) AS sumAVG FROM streaming_preference sp INNER JOIN ranking r ON sp.streaming_id = r.streaming_id WHERE r.rank_date = '2024-01-09'";
		return db.queryForObject(sql, Integer.class);
		
	}
	
	/*public List<RankGraph> getGraphData(){
		
		String sql = "SELECT SUM(avg_viewers) AS sumAVG FROM streaming_preference sp INNER JOIN ranking r ON sp.streaming_id = r.streaming_id WHERE r.rankdate = '2024-01-09'";
		List<RankGraph> rankGraph = db.query(sql, rankGraphMapper);
		return rankGraph;
		
	}
	*/
	
}
