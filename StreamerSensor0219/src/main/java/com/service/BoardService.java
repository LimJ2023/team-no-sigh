package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;
import com.domain.Board;

@Service
public class BoardService {
	
	@Autowired
	BoardDAO boardDAO;
	
	public Board getBoard(int board_num) {
		Board boardBean = new Board();
		boardBean = boardDAO.getBoardInfo(board_num);
		return boardBean;
		
	}
}
