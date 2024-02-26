package com.mapper;

import org.apache.ibatis.annotations.Select;

import com.domain.Board;

public interface BoardMapper {

	@Select("select board_num, user_id, title, info, board_date, view_count " +
			"from board " +
			"where board_num = #{board_num} " +
			"order by board_num asc")
	Board getboard(int board_num);

}
