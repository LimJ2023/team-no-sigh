package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.beans.BoardInfoBean;
import com.domain.Board;

public interface BoardMapper {

	@Select("select board_idx, user_id, title, info, board_date, view_count " +
			"from board ")
	List<Board> getBoardInfo();
	
	/*
	 * @Select("select board_idx, user_id, title, view_count from board where board_idx = #{board_idx}"
	 * ) Board getBoardCnt(int board_idx);
	 */
	
	@Select("select board_idx, user_id, title, info, board_date, board_date, view_count, comment_count, tags "
			+ "from board "
			+ "where board_idx = #{board_idx}")
	Board selectOneBoard(int board_idx);
	
	@Insert("INSERT INTO board (board_idx, user_id, title, info, board_date, view_count, comment_count, tags) "
			+ "VALUES(board_seq.nextval, #{board_write_id}, #{board_write_title}, #{board_write_info}, sysdate, 1, 0, #{board_write_tags})")
	void addBoardInfo(BoardInfoBean writeBoardBean);
	
	@Delete("delete from board where board_idx = #{board_idx}")
	void deleteBoardInfo(int board_idx);
}