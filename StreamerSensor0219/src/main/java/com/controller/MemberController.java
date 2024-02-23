package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.domain.Users;
import com.service.UsersService;

@Controller
public class MemberController {
	
	@Autowired
	UsersService uService;
	
	@GetMapping("/members")
	public String members(Model model) {
		
		List<Users> users = uService.getAllUsers();
		model.addAttribute("users", users);
		
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
	
	@GetMapping("/member_profile")
	public String member_profile() {
		return "admin/member_profile";
	}

}
