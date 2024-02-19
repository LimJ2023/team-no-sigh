package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChartController {

	
	
	@RequestMapping(value = "/chart")
	public String chartPage(Model model) {
		return "/chart/chart";
	}
	
}
