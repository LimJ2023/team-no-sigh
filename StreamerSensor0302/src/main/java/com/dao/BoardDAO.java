package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beans.BoardInfoBean;
import com.domain.Board;
import com.mapper.BoardMapper;

@Repository
public class BoardDAO {
	
	@Autowired
	BoardMapper boardMapper;
	
	public Board getBoardInfo(int board_idx) {
		return boardMapper.getBoardInfo(board_idx);
	}
	
	/*
	 * public Board getBoardCnt(int board_idx) { return
	 * boardMapper.getBoardCnt(board_idx); }
	 */
	
	public void addBoardInfo(BoardInfoBean writeBoardInfoBean) {
		boardMapper.addBoardInfo(writeBoardInfoBean);
	}
}
