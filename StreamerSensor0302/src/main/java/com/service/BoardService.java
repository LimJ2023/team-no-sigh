package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans.BoardInfoBean;
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
	
	/*
	 * public Board getBoardCnt(int board_idx) { Board boardlist = new Board();
	 * boardlist = boardDAO.getBoardCnt(board_idx); return boardlist; }
	 */
	
	public void addBoardInfo(BoardInfoBean writeBoardBean) {
	      
	      System.out.println(writeBoardBean.getBoard_write_info());
	      System.out.println(writeBoardBean.getBoard_write_id());
	      
	      boardDAO.addBoardInfo(writeBoardBean);
	}
	
	public void deleteBoardInfo(int board_idx) {
		boardDAO.deleteBoardInfo(board_idx);
	}
}