package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;
import com.domain.Board;

@Service
public class BoardService {
	
	@Autowired
	BoardDAO boardDAO;
	
	public Board getBoard(int content_idx) {
		Board boardBean = new Board();
		boardBean = boardDAO.getBoardInfo(content_idx);
		return boardBean;
		
	}
	
	/*
	 * public List<ContentBean> getContentList(int board_num) { return
	 * BoardDAO.getContentInfo(board_num); }
	 */
}
