package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.service.AdminService;
import com.service.UsersService;

@Controller
public class ChartController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	UsersService uService;
	
	@GetMapping("/chart")
	public String chart() {
		return "chart/chart";
	}

}
