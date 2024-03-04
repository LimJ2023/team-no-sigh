package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.beans.BoardInfoBean;
import com.domain.Board;
import com.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "")
	public String boardListPage() {
		
		/*
		 * model.addAttribute("board_idx", board_idx); Board boardlist =
		 * boardService.getBoardCnt(board_idx); model.addAttribute("boardlist",
		 * boardlist);
		 */
		return "/board/boardList";
	}
	
	@RequestMapping(value = "/boardView")
	public String boardViewPage(Model model, @RequestParam("board_idx") int board_idx) {
		
		model.addAttribute("board_idx", board_idx);
		Board data = boardService.getBoardInfo(board_idx);
		model.addAttribute("data", data);
		
		return "/board/boardView";
	}
	
	@RequestMapping(value = "/boardWrite")
	public String boardWritePage(@ModelAttribute("writeBoardInfoBean") BoardInfoBean writeBoardInfoBean) {
		
		return "/board/boardWrite";
	}
	
	@RequestMapping(value = "/boardWriteSuccess")
	public String boardWriteSuccessPage() {
		return "/board/boardWriteSuccess";
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
