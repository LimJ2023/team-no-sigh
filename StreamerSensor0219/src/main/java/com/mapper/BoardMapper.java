package com.mapper;

import org.apache.ibatis.annotations.Select;

import com.domain.Board;

public interface BoardMapper {

	@Select("SELECT board_num, user_id, title, info, board_date, view_count, comment_count, tags "
			+ "FROM board "
			+ "ORDER BY board_num ASC")
	Board getboard();

}
