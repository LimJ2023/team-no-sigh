package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.domain.GradeCount;
import com.domain.SiteInfo;
import com.domain.Streamer;

public interface StreamerMapper {
	
	@Select("SELECT * "
			+ "FROM streamer "
			+ "WHERE streamer_idx = #{streamer_idx} ")
	Streamer getStreamer(int streamer_idx);
	
	@Select("SELECT streamer_id, streamer_followers "
			+ "FROM streamer ")
	List<Streamer> getStreamerFollowers();
	
	@Select("select streamer_grade , count(streamer_grade) as grade_count "
			+ "from streamer "
			+ "group by streamer_grade")
	List<GradeCount> getGradeCount();
	
	@Select("select visit_count, site_stat_date "
			+ "from site_stat")
	List<SiteInfo> getSiteStatDate();
}
