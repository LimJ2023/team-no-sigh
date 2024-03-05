package com.controller;

import java.util.List;

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
import com.domain.Users;
import com.service.UsersService;

import com.validator.UsersValidator;

@Controller
@RequestMapping("/user")
public class UsersController {

	@Autowired
	private UsersService userService;

	@Resource(name = "loginUserBean")
	private Users loginUserBean;

	@GetMapping("/login_page")
	public String login_page(@ModelAttribute("tempLoginUserBean") Users tempLoginUserBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {
		model.addAttribute("fail", fail);
		return "user/login_page";
	}

	@GetMapping("/register")
	public String register(@ModelAttribute("joinUserBean") Users joinUserBean) {
		return "user/register";
	}

	@GetMapping("/myPage")
	public String myPage() {
		return "user/myPage";
	}
	
	@GetMapping("/account")
	public String account() {
		
		
		return "user/account";
	}
	
	@GetMapping("/account_delete")
	public String account_delete(@RequestParam("user_idx") int user_idx, Model model) {
		userService.deleteMemberInfo(user_idx);
		
		return "user/account_delete";
	}

	@GetMapping("/password_chan")
	public String modify(@ModelAttribute("modifyUserBean") Users modifyUserBean,
						@RequestParam("user_idx") int user_idx, Model model) {

		userService.getmodifyUserinfo(modifyUserBean);
		Users users = userService.printOneUser(user_idx);
		// uService.modifyMemberInfo(users);
		
		modifyUserBean.setUser_id(users.getUser_id());
		modifyUserBean.setUser_name(users.getUser_name());
		modifyUserBean.setUser_gender(users.getUser_gender());
		modifyUserBean.setUser_age(users.getUser_age());
		modifyUserBean.setUser_nation(users.getUser_nation());
		modifyUserBean.setSubscription(users.getSubscription());
		modifyUserBean.setUser_image(users.getUser_image());

		modifyUserBean.setUser_idx(user_idx);
		return "user/password_chan";
	}

	
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyUserBean") Users modifyUserBean,
							BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/password_chan";
		}
		
		userService.modifyUserInfo(modifyUserBean);
		
		return "user/account_modify";
	}
	
	@GetMapping("/logout")
	public String logout() {
		loginUserBean.setUserLogin(false);
		return "user/logout";
	}

	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUserBean") Users joinUserBean, BindingResult result) {

		if (result.hasErrors()) {
			return "/user/register";
		}
		// 데이터베이스에 저장 및 회원가입 완료
		userService.addUserInfo(joinUserBean);
		return "user/join_success";
	}

	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserBean") Users tempLoginUserBean,
			BindingResult result) {

		if (result.hasErrors()) {
			return "user/login_page";
		}

		userService.getLoginUserInfo(tempLoginUserBean);

		if (loginUserBean.isUserLogin() == true) {
			return "user/login_success";
		} else {
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
