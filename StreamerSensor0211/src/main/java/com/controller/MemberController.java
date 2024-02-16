package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
	@GetMapping("/members")
	public String members() {
		return "admin/members";
	}
	
	@GetMapping("/dashBoard")
	public String dashBoard() {
		return "admin/dashBoard";
	}
	
	@GetMapping("/index")
	public String index() {
		return "home/index";
	}

}
