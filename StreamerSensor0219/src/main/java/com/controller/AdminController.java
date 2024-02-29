package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.domain.Admin;
import com.domain.SiteInfo;
import com.domain.Users;
import com.service.AdminService;
import com.service.ReviewService;
import com.service.UsersService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	@Autowired
	UsersService usersService;
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping(value = "/admin")
	public String adminPage(Model model) {
		
		/*
		 * Admin admin = adminService.getAdmin(); 
		 * SiteInfo info = adminService.getSiteInfo(); 
		 * Users user = usersService.getUsers(); List<Users>
		 * subUsers = usersService.getSubUsers(); 
		 * Review review = reviewService.getRecentReview();
		 * 
		 * model.addAttribute("admin", admin); model.addAttribute("info",info);
		 * model.addAttribute("user", user); model.addAttribute("review", review);
		 * model.addAttribute("subUsers", subUsers);
		 */
		
		Admin admin = adminService.getAdmin();
		SiteInfo info = adminService.getSiteInfo();
		Users user = usersService.getUsers();
		List<Users> subUsers = usersService.getSubUsers(); 
		model.addAttribute("admin", admin);
		model.addAttribute("info",info);
		model.addAttribute("user", user);
		model.addAttribute("subUsers",subUsers);
		
		return "/admin/dashBoard";
	}
}
