package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;
import com.domain.Board;

@Service
public class BoardService {
	
	@Autowired
	BoardDAO boardDAO;
	
	public List<Board> getBoardInfo() {
		List<Board> boardBean = boardDAO.getBoardInfo();
		return boardBean;
		
	}
	
	public void conutOneBoard(int board_idx) {
		boardDAO.conutOneBoard(board_idx);
	}
	
	public Board selectOneBoard(int board_idx) {
		return boardDAO.selectOneBoard(board_idx);
	}
	
	public void addBoardInfo(Board writeBoardBean) {	      
	    boardDAO.addBoardInfo(writeBoardBean);
	}
	
	public void modifyBoardInfo(Board modifyBoardBean) {
		boardDAO.modifyBoardInfo(modifyBoardBean);
	}
	
	public void deleteBoardInfo(int board_idx) {
		boardDAO.deleteBoardInfo(board_idx);
	}
	
	
}