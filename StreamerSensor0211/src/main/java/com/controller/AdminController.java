package main.java.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.com.domain.Admin;
import main.java.com.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value = "/admin")
	public String adminPage(Model model) {
		Admin admin = adminService.getAdmin();
		model.addAttribute("admin", admin);
		return "/admin/dashBoard";
	}
}
