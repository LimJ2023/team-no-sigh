package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String adminPage(@RequestParam(value =  "adminId", defaultValue = "0") int adminId, 
			Model model, HttpSession session) {
		
		
		Admin admin = adminService.getAdmin(adminId);
		int sales = (int)session.getServletContext().getAttribute("totalSales");
		int visitCount = (int)session.getServletContext().getAttribute("visitorCount");
		SiteInfo info = adminService.getSiteInfo(sales,visitCount);
		
		List<Users> subUsers = usersService.getSubUsers();
		List<Users> newUsers = usersService.getNewJoinUsers(3);
		
		StreamerRating rating = reviewService.getRecentRating();
		
		
				
		model.addAttribute("admin", admin);
		model.addAttribute("info",info);
		model.addAttribute("newUsers",newUsers);
		model.addAttribute("subUsers",subUsers);
		model.addAttribute("rating",rating);
		
		if(adminId == 5) {
			
			List<Admin> adminList = adminService.getAllAdmin();
			model.addAttribute("adminList",adminList);
			
			List<StreamerRating> delRatingList = reviewService.getDeleteRatingList();
			model.addAttribute("delRatingList",delRatingList);
			
			return "/admin/dashBoard_super";
		}
		
		return "/admin/dashBoard";
	}
	@RequestMapping( value = "/admin/deleteComment")
	public String deleteComment() {
		
		int delId = reviewService.getRecentRating().getComment_id();
		StreamerRating delRating = reviewService.getRecentRating();
		reviewService.insertDeleteRating(delRating);
		reviewService.deleteRatingById(delId);
		
		return "redirect:/admin";
	}
}
