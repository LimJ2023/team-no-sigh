package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.Admin;
import com.domain.SiteInfo;
import com.domain.Users;
import com.service.AdminService;
import com.service.UsersService;

@Controller
public class MemberController {

	@Autowired
	AdminService adminService;

	@Autowired
	UsersService uService;

	/*
	 * @Autowired private Users selectUserBean;
	 */

	@GetMapping("/members")
	public String members(Model model) {

		List<Users> users = uService.getAllUsers();
		model.addAttribute("users", users);

		return "admin/members";
	}

	@GetMapping("/dashBoard")
	public String dashBoard(Model model) {

		Admin admin = adminService.getAdmin();
		SiteInfo info = adminService.getSiteInfo();
		Users user = uService.getUsers();
		model.addAttribute("admin", admin);
		model.addAttribute("info", info);
		model.addAttribute("user", user);

		return "admin/dashBoard";
	}

	@GetMapping("/index")
	public String index() {
		return "home/index";
	}

	@GetMapping("/member_profile")
	public String member_profile(@RequestParam("user_idx") int user_idx, Model model) {

		Users users = uService.printOneUser(user_idx);
		model.addAttribute("users", users);
		model.addAttribute("user_idx", user_idx);

		return "admin/member_profile";
	}

	@GetMapping("/member_delete")
	public String deleteMember(@RequestParam("user_idx") int user_idx,
	                           Model model) {

	    uService.deleteMemberInfo(user_idx);

	    return "/admin/member_delete";
	}


}
