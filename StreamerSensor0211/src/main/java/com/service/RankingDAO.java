package main.java.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import main.java.com.domain.Ranking;
import main.java.com.mapper.RankingMapper;

@Component
public class RankingDAO {

	@Autowired
	private JdbcTemplate db;
	@Autowired
	RankingMapper rankingMapper;
	
	public List<Ranking> select_ranking(){
		
		String sql = "SELECT * FROM ranking r INNER JOIN streaming_info si ON si.streaming_id = r.streaming_id INNER JOIN streamer s ON s.strm_id = si.strm_id WHERE rank_date = '2024-01-09' ORDER BY r.rank_place ASC";
		List<Ranking> ranking = db.query(sql, rankingMapper);
		return ranking;
	}
	
}
