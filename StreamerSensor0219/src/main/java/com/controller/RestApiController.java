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
	
	//register의 ajax와 연결
	@GetMapping("/user/checkUserIdExist/{user_id}")
	public String checkUserIdExist(@PathVariable String user_id) {
									//주소에 데이터를 붙이기 위해서 사용(PathVariable)
		
		boolean chk = userService.checkuserIdExist(user_id);
		
		return chk + "";
		
	}//제이슨 형식으로 클라이언트에게 전달 / 뷰에 보인다
}
