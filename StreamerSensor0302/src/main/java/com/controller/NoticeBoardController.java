package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeBoardController {
	
	@RequestMapping(value = "/NoticeBoard")
	public String NoticeBoard() {
		/*model.addAttribute(null, model);*/
		return "NoticeBoard/noticeBoard";
	}
}
