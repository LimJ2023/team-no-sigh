package main.java.com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import main.java.com.domain.Ranking;

@Component
public class RankingMapper implements RowMapper<Ranking>{

	@Override
	public Ranking mapRow(ResultSet rs, int rowNum) throws SQLException {

		Ranking ranking = new Ranking();
		ranking.setRanking_id(rs.getInt("ranking_id"));
		ranking.setRank_date(rs.getString("rank_date"));
		ranking.setRank_place(rs.getInt("rank_place"));
		ranking.setRank_method(rs.getString("rank_method"));
		ranking.setStreaming_id(rs.getInt("streaming_id"));
		
		//--------------
		ranking.setStrm_id(rs.getString("strm_id"));
		ranking.setStrm_platform(rs.getString("strm_platform"));
		ranking.setStreaming_desc(rs.getString("streaming_desc"));
		ranking.setStrm_followers(rs.getInt("strm_followers"));
		ranking.setStreaming_category(rs.getString("streaming_category"));
		
		return ranking;
	}

	
	
	
}
