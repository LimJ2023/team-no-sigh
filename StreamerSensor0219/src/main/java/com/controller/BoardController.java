package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping(value = "/board")
	public String boardListPage() {
		return "/board/boardList";
	}
	
	@RequestMapping(value = "/board/boardView")
	public String boardViewPage() {
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
