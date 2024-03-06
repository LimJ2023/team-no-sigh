package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String boardListPage(Model model) {

		List<Board> board = boardService.getBoardInfo();
		model.addAttribute("board", board);

		return "/board/boardList";
	}

	@RequestMapping(value = "/boardView")
	public String boardViewPage(Model model, @RequestParam("board_idx") int board_idx) {

		model.addAttribute("board_idx", board_idx);
		boardService.conutOneBoard(board_idx);
		Board data = boardService.selectOneBoard(board_idx);
		model.addAttribute("data", data);

		return "/board/boardView";
	}

	@RequestMapping(value = "/boardWrite")
	public String boardWritePage(@ModelAttribute("writeBoardBean") Board writeBoardBean, Model model) {
		return "/board/boardWrite";
	}

	@RequestMapping(value = "/boardWriteSuccess")
	public String boardWriteSuccessPage(@ModelAttribute("writeBoardBean") Board writeBoardBean, BindingResult result) {
		if (result.hasErrors()) {
			return "board/write";
		}
		boardService.addBoardInfo(writeBoardBean);
		return "/board/boardWriteSuccess";
	}

	@RequestMapping(value = "/boardModify")
	public String boardModifyPage(@ModelAttribute("modifyBoardBean") Board modifyBoardBean, @RequestParam("board_idx") int board_idx,  Model model) {
		model.addAttribute("board_idx", board_idx);
		
		Board tempBoardlist = boardService.selectOneBoard(board_idx);
		
		modifyBoardBean.setBoard_idx(tempBoardlist.getBoard_idx());
		modifyBoardBean.setUser_id(tempBoardlist.getUser_id());
		modifyBoardBean.setTitle(tempBoardlist.getTitle());
		modifyBoardBean.setInfo(tempBoardlist.getInfo());
		modifyBoardBean.setBoard_date(tempBoardlist.getBoard_date());
		modifyBoardBean.setView_count(tempBoardlist.getView_count());
		modifyBoardBean.setComment_count(tempBoardlist.getComment_count());
		modifyBoardBean.setCategorys(tempBoardlist.getCategorys());
		
		return "/board/boardModify";
	}
	
	@RequestMapping(value = "/boardModifySuccess")
	public String boardModifySuccessPage(@ModelAttribute("modifyBoardBean") Board modifyBoardBean, @RequestParam("board_idx") int board_idx, Model model) {
		model.addAttribute("board_idx", board_idx);
		
		boardService.modifyBoardInfo(modifyBoardBean);
		return "/board/boardModifySuccess";
	}

	@RequestMapping(value = "/boardDelete")
	public String boardDeletePage(@RequestParam("board_idx") int board_idx, Model model) {
		boardService.deleteBoardInfo(board_idx);
		return "/board/boardDelete";
	}

}