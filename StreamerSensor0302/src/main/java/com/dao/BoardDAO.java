package com.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.Board;
import com.mapper.BoardMapper;

@Repository
public class BoardDAO {
	
	@Autowired
	BoardMapper boardMapper;
	
	public List<Board> getBoardInfo(RowBounds rowBounds) {
		return boardMapper.getBoardInfo(rowBounds);
	}
	
	public int getBoardCnt(int boardCount) {
		return boardMapper.getBoardCnt(boardCount);
	}
	
	public void conutOneBoard(int board_idx) {
		boardMapper.conutOneBoard(board_idx);
	}
	
	public Board selectOneBoard(int board_idx) {
		return boardMapper.selectOneBoard(board_idx);
	}
	
	public void addBoardInfo(Board writeBoardBean) {
		boardMapper.addBoardInfo(writeBoardBean);
	}
	
	public void modifyBoardInfo(Board modifyBoardBean) {
		boardMapper.modifyBoardInfo(modifyBoardBean);
	}
	
	public void deleteBoardInfo(int board_idx) {
		boardMapper.deleteBoardInfo(board_idx);
	}
}