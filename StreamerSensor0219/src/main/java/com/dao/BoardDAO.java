package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.Board;
import com.mapper.BoardMapper;

@Repository
public class BoardDAO {
	
	@Autowired
	BoardMapper boardMapper;
	
	public Board getBoardInfo() {
		return boardMapper.getboard();
	}
}
