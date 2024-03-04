package com.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.beans.BoardInfoBean;
import com.domain.Board;

public interface BoardMapper {

	@Select("select board_idx, user_id, title, info, board_date, view_count " +
			"from board " +
			"where board_idx = #{board_idx}")
	Board getBoardInfo(int board_idx);
	
	/*
	 * @Select("select board_idx, user_id, title, view_count from board where board_idx = #{board_idx}"
	 * ) Board getBoardCnt(int board_idx);
	 */
	
	@Insert("INSERT INTO board (board_idx, user_id, title, info, board_date, view_count, comment_count, tags) "
			+ "VALUES(board_seq.nextval, '12345', '공략', '이거 깨는데 30분이면 충분', sysdate, 1, 0, '방송')")
	void addBoardInfo(BoardInfoBean writeBoardInfoBean);
}
