package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.domain.Admin;
import com.domain.SiteInfo;
import com.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value = "/admin")
	public String adminPage(Model model) {
		Admin admin = adminService.getAdmin();
		SiteInfo info = adminService.getSiteInfo();
		model.addAttribute("admin", admin);
		model.addAttribute("info",info);
		return "/admin/dashBoard";
	}
}