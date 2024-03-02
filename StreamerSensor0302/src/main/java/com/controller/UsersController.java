package com.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.beans.UsersBean;
import com.service.UsersService;

import com.validator.UsersValidator;


@Controller
@RequestMapping("/user")
public class UsersController {

	@Autowired
	private UsersService userService;
	
	@Resource(name = "loginUserBean")
	private UsersBean loginUserBean;
	
	@GetMapping("/login_page")
	public String login_page(@ModelAttribute("tempLoginUserBean") UsersBean tempLoginUserBean,
			@RequestParam(value="fail", defaultValue = "false") boolean fail, Model model) {
		model.addAttribute("fail",fail);
		return "user/login_page";
	}

	@GetMapping("/register")
	public String register(@ModelAttribute("joinUserBean") UsersBean joinUserBean) {
		return "user/register";
	}
	
	@GetMapping("/myPage")
	public String myPage() {
		return "user/myPage";
	}
	
	@GetMapping("/logout")
	public String logout() {
		loginUserBean.setUserLogin(false);
		return "user/logout";
	}
	
	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUserBean") UsersBean joinUserBean, 
			BindingResult result) {
		
		if(result.hasErrors()) {
			return "/user/register";
		}
		//데이터베이스에 저장 및 회원가입 완료
		userService.addUserInfo(joinUserBean);
		return "user/join_success";
	}
	
	
	
	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserBean") 
							UsersBean tempLoginUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/login_page";
		}
		
		userService.getLoginUserInfo(tempLoginUserBean);
		
		if(loginUserBean.isUserLogin() == true) {
			return "user/login_success";
		}else {			
			return "user/login_fail";
		}
	}
	
	@GetMapping("/not_login")
	public String not_login() {
		return "user/not_login";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		UsersValidator validator1 = new UsersValidator();
		binder.addValidators(validator1);
	}
}
