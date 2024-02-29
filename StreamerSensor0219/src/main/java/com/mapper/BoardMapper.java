package com.mapper;

import org.apache.ibatis.annotations.Select;

import com.domain.Board;

public interface BoardMapper {

	@Select("select board_num, user_id, title, info, board_date, view_count, content_idx " +
			"from board " +
			"where content_idx = #{content_idx2} " +
			"order by content_idx asc")
	Board getboard(int content_idx2);

}
