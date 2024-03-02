package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.Board;
import com.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "")
	public String boardListPage() {
		return "/board/boardList";
	}
	
	@RequestMapping(value = "/board/boardView")
	public String boardViewPage(Model model, 
			@RequestParam("board_num") int board_num,
			@RequestParam("content_idx") int content_idx) {
		
		Board data = boardService.getBoard(content_idx);
		model.addAttribute("data", data);
		model.addAttribute("board_num", board_num);
		
		return "/board/boardView";
	}
	
	@RequestMapping(value = "/boardWrite")
	public String boardWritePage() {
		return "/board/boardWrite";
	}
	
	@RequestMapping(value = "/boardModify")
	public String boardModifyPage() {
		return "/board/boardModify";
	}
	
	@RequestMapping(value = "/boardDelete")
	public String boardDeletePage() {
		return "/board/boardDelete";
	}
	
}
