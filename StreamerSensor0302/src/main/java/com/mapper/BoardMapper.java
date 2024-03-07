package com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import com.domain.Board;

public interface BoardMapper {

	@Select("select a1.board_idx, a1.user_id, a1.title, a1.info, to_char(a1.board_date) as board_date, a1.view_count "
			+ "from board a1, stream_categorys a2 "
			+ "where a2.categorys = a1.categorys "
			+ "order by board_idx desc")
	List<Board> getBoardInfo(RowBounds rowBounds);
	
	@Select("select count(*) from board")
	int getBoardCnt(int boardCount);
	
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
