package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.Board;
import com.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/board")
	public String boardListPage() {
		
		return "/board/boardList";
	}
	
	@RequestMapping(value = "/board/boardView")
	public String boardViewPage(Model model, @RequestParam("board_num") int board_num) {
		Board data = boardService.getBoard(board_num);
		model.addAttribute("data", data);
		
		return "/board/boardView";
	}
	
	@RequestMapping(value = "/board/boardWrite")
	public String boardWritePage() {
		return "/board/boardWrite";
	}
	
	@RequestMapping(value = "/board/boardModify")
	public String boardModifyPage() {
		return "/board/boardModify";
	}
	
	@RequestMapping(value = "/board/boardDelete")
	public String boardDeletePage() {
		return "/board/boardDelete";
	}
	
}
