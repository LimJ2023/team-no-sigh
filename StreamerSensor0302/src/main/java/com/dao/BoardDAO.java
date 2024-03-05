package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.Board;
import com.mapper.BoardMapper;

@Repository
public class BoardDAO {
	
	@Autowired
	BoardMapper boardMapper;
	
	public List<Board> getBoardInfo() {
		return boardMapper.getBoardInfo();
	}
	
	/*
	 * public Board getBoardCnt(int board_idx) { return
	 * boardMapper.getBoardCnt(board_idx); }
	 */
	
	public Board selectOneBoard(int board_idx) {
		return boardMapper.selectOneBoard(board_idx);
	}
	
	public void addBoardInfo(Board writeBoardBean) {
		boardMapper.addBoardInfo(writeBoardBean);
	}
	
	public void deleteBoardInfo(int board_idx) {
		boardMapper.deleteBoardInfo(board_idx);
	}
}