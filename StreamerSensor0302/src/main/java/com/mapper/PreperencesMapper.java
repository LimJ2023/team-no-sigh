package com.mapper;

import org.apache.ibatis.annotations.Select;

import com.domain.Preperences;

public interface PreperencesMapper {
	
	@Select("SELECT u.user_id, p.streamer_id, c.categorys, p.favorites, p.review_count "
			+ "FROM users u "
			+ "INNER JOIN preferences p ON u.user_id = p.user_id "
			+ "INNER JOIN stream_categorys c ON p.stream_categorys_id = c.stream_categorys_id "
			+ "WHERE u.user_id = 'soldesk'")
	Preperences getPreperences();
	
}
