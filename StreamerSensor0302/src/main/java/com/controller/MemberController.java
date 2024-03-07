package com.controller;

import java.util.List;

import javax.validation.Valid;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.Admin;
import com.domain.Review;
import com.domain.SiteInfo;
import com.domain.Streamer;
import com.domain.Users;
import com.domain.Video;
import com.service.AdminService;
import com.service.MainService;
import com.service.RankingService;
import com.service.ReviewService;
import com.service.UsersService;

@Controller
public class MemberController {

	@Autowired
	AdminService adminService;
	@Autowired
	UsersService uService;
	@Autowired
	ReviewService reviewService;
	@Autowired
	RankingService rankingService;
	@Autowired
	MainService mainService;

	@GetMapping("/members")
	public String members(Model model) {

		List<Users> users = uService.getAllUsers();
		model.addAttribute("users", users);

		Admin admin = adminService.getAdmin();
		model.addAttribute("admin", admin);

		return "admin/members";
	}

	@GetMapping("/dashBoard")
	public String dashBoard(Model model) {

		Admin admin = adminService.getAdmin();
		SiteInfo info = adminService.getSiteInfo();
		Users user = uService.getUsers();
		List<Users> subUsers = uService.getSubUsers();
		Review review = reviewService.getRecentReview();

		model.addAttribute("admin", admin);
		model.addAttribute("info", info);
		model.addAttribute("user", user);
		model.addAttribute("subUsers", subUsers);
		model.addAttribute("review", review);

		return "admin/dashBoard";
	}

	@GetMapping("/index")
	public String home2(Model model) {

		List<Video> popVideoInfo = rankingService.popVideoApi();
		model.addAttribute("popVideoInfo", popVideoInfo);
		List<Streamer> streamerInfo = mainService.getStreamerInfo();
		model.addAttribute("streamerInfo", streamerInfo);

		return "home/index";
	}

	@GetMapping("/member_profile")
	public String member_profile(@RequestParam("user_idx") int user_idx, 
			@RequestParam("user_id")String user_id, Model model) {
		
		model.addAttribute("user_idx", user_idx);
		model.addAttribute("user_id", user_id);

		Users users = uService.printOneUser(user_idx);
		model.addAttribute("users", users);
		
		List<Users> board =  uService.selectBoardInfo(user_id);
		model.addAttribute("board", board);
		

		List<Users> board = uService.selectBoardInfo(user_id);
		model.addAttribute("board", board);

		return "admin/member_profile";
	}

	@GetMapping("/member_delete")
	public String deleteMember(@RequestParam("user_idx") int user_idx, Model model) {

		uService.deleteMemberInfo(user_idx);

		return "/admin/member_delete";
	}

	@GetMapping("/member_modify")
	public String modifyMember(@ModelAttribute("modifyMemberBean") Users modifyMemberBean,
			@RequestParam("user_idx") int user_idx, Model model) {

		model.addAttribute("user_idx", user_idx);

		Users users = uService.printOneUser(user_idx);
		// uService.modifyMemberInfo(users);

		modifyMemberBean.setUser_id(users.getUser_id());
		modifyMemberBean.setUser_name(users.getUser_name());
		modifyMemberBean.setUser_gender(users.getUser_gender());
		modifyMemberBean.setUser_age(users.getUser_age());
		modifyMemberBean.setUser_nation(users.getUser_nation());
		modifyMemberBean.setSubscription(users.getSubscription());
		modifyMemberBean.setUser_image(users.getUser_image());

		modifyMemberBean.setUser_idx(user_idx);

		return "admin/member_profile_modify";
	}

	@PostMapping("/admin/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyMemberBean") Users modifyMemberBean, BindingResult result) {

		if (result.hasErrors()) {
			return "admin/member_profile_modify";
		}

		uService.modifyMemberInfo(modifyMemberBean);

		return "admin/modify_success";
	}

}
