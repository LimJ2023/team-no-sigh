package com.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans.BoardPageBean;
import com.dao.BoardDAO;
import com.domain.Board;

@Service
public class BoardService {
	
	private int boardCount;
	private int page_listcnt = 10;
	private int page_paginationcnt = 10;
	
	@Autowired
	BoardDAO boardDAO;
	
	public List<Board> getBoardInfo(int page) {
		
		int start = (page - 1) * page_listcnt;
		
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		
		List<Board> boardBean = boardDAO.getBoardInfo(rowBounds);
		return boardBean;
		
	}
	
	public BoardPageBean getBoardCnt(int currentPage) {
		
		int board_cnt = boardDAO.getBoardCnt(boardCount);
		
		BoardPageBean pageBean = new BoardPageBean(board_cnt, currentPage, page_listcnt, page_paginationcnt);
		
		return pageBean;
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