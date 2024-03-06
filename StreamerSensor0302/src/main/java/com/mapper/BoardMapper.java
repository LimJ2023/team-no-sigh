package com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.domain.Board;

public interface BoardMapper {

	@Select("select board_idx, user_id, title, info, board_date, view_count " +
			"from board ")
	List<Board> getBoardInfo();
	
	@Update("update board set view_count = view_count + 1 where board_idx = #{board_idx}")
	void conutOneBoard(int board_idx);
	
	@Select("select board_idx, user_id, title, info, board_date, view_count, comment_count, categorys "
			+ "from board "
			+ "where board_idx = #{board_idx}")
	Board selectOneBoard(int board_idx);
	
	@Insert("INSERT INTO board (board_idx, user_id, title, info, board_date, view_count, comment_count, categorys) "
			+ "VALUES(board_seq.nextval, #{user_id}, #{title}, #{info}, sysdate, #{view_count}, #{comment_count}, #{categorys})")
	void addBoardInfo(Board writeBoardBean);
	
	@Update("update board set title = #{title}, info = #{info}, categorys = #{categorys} where board_idx = #{board_idx}")
	void modifyBoardInfo(Board modifyBoardBean);
	
	@Delete("delete from board where board_idx = #{board_idx}")
	void deleteBoardInfo(int board_idx);
}
