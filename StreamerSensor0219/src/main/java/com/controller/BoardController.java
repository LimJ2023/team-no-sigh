package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	@RequestMapping(value = "/")
	public String boardListPage() {
		return "/board/boardList";
	}
	
	@RequestMapping(value = "/boardView")
	public String boardViewPage() {
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
