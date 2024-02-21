package com.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.beans.DataBean;

@Controller
public class MyController {

	@GetMapping("/account")
	public String account(DataBean dataBean) {
		return "account";
	}
	
	@PostMapping("/input_pro")
	   public String input_pro(@Valid DataBean dataBean, BindingResult result) {
	      
	      if(result.hasErrors()) {
	         return "account";
	      }
	      
	      return "input_success";
	   }
}
