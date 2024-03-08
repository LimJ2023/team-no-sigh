package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.domain.Admin;
import com.domain.Review;
import com.domain.SiteInfo;
import com.domain.StreamerRating;
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
		
		
		Admin admin = adminService.getAdmin();
		SiteInfo info = adminService.getSiteInfo();
		
		List<Users> subUsers = usersService.getSubUsers();
		List<Users> newUsers = usersService.getNewJoinUsers(3);
		StreamerRating rating = reviewService.getRecentRating();
		
		System.out.println("유저 이미지 : " + newUsers.get(0).getUser_image());
		
		model.addAttribute("admin", admin);
		model.addAttribute("info",info);
		model.addAttribute("newUsers",newUsers);
		model.addAttribute("subUsers",subUsers);
		model.addAttribute("rating",rating);
		
		return "/admin/dashBoard";
	}
}
