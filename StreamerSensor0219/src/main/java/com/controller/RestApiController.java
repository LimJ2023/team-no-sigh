package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.service.UsersService;



@RestController
public class RestApiController {

	@Autowired
	private UsersService userService;
	
	
	@GetMapping("/user/checkUserIdExist/{user_id}")
	public String checkUserIdExist(@PathVariable String user_id) {
									
		
		boolean chk = userService.checkuserIdExist(user_id);
		
		return chk + "";
		
	}
}
