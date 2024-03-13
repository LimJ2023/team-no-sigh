package com.controller;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.domain.Users;
import com.service.UsersService;
import com.validator.UsersValidator;

@Controller
@RequestMapping("/user")
@PropertySource("/WEB-INF/properties/pay.toss")
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
	
	
	
	@GetMapping("/account_delete")
	public String account_delete(@RequestParam("user_idx") int user_idx, Model model) {
		userService.deleteMemberInfo(user_idx);
		
		return "user/account_delete";
	}

	@GetMapping("/password_chan")
	public String modify(@ModelAttribute("modifyUserBean") Users modifyUserBean
						) {

		userService.getmodifyUserinfo(modifyUserBean);
		
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

	@GetMapping("/subscribe")
	public String subscribe(@RequestParam(value = "isSub", defaultValue = "n") String isSub,
							@RequestParam(value = "sales", defaultValue = "0") int sales, 
							HttpSession session) {
		int idx = loginUserBean.getUser_idx();
		userService.updateUserSub(isSub, idx);
		
		int daySales = (int) session.getServletContext().getAttribute("totalSales");
		
		daySales += (int) sales;
		session.getServletContext().setAttribute("totalSales", daySales);
		System.out.println("유저컨트롤러의 데이 세일즈 : " + daySales);
		
		Users updatedUser = userService.getUserByIdx(idx);
		loginUserBean.setUser_id(updatedUser.getUser_id());
		loginUserBean.setSubscription(updatedUser.getSubscription());
		
		
		//loginUserBean = userService.getUserByIdx(idx);
		session.setAttribute("loginUserBean", loginUserBean);
		return "user/subscribe";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		UsersValidator validator1 = new UsersValidator();
		binder.addValidators(validator1);

	}
	
	@GetMapping("/member_delete")
	public String deleteMember(@RequestParam("user_idx") int user_idx, Model model) {

		userService.deleteMemberInfo(user_idx);

		return "/user/member_delete";
	}
	
	@GetMapping("/success")
    public String paymentResult(
            Model model,
            @RequestParam(value = "orderId") String orderId,
            @RequestParam(value = "amount") Integer amount,
            @RequestParam(value = "paymentKey") String paymentKey) throws Exception {
		
		System.out.println("orderid");

		String secretKey = "test_sk_Ba5PzR0ArnPvqzwb1J9G3vmYnNeD:";
		
        Base64.Encoder encoder = Base64.getEncoder();
        byte[] encodedBytes = encoder.encode(secretKey.getBytes("UTF-8"));
        String authorizations = "Basic " + new String(encodedBytes, 0, encodedBytes.length);

        URL url = new URL("https://api.tosspayments.com/v1/payments/" + paymentKey);

        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestProperty("Authorization", authorizations);
        connection.setRequestProperty("Content-Type", "application/json");
        connection.setRequestMethod("POST");
        connection.setDoOutput(true);
        JSONObject obj = new JSONObject();
        obj.put("orderId", orderId);
        obj.put("amount", amount);

        OutputStream outputStream = connection.getOutputStream();
        outputStream.write(obj.toString().getBytes("UTF-8"));

        int code = connection.getResponseCode();
        boolean isSuccess = code == 200 ? true : false;
        model.addAttribute("isSuccess", isSuccess);

        InputStream responseStream = isSuccess ? connection.getInputStream() : connection.getErrorStream();

        Reader reader = new InputStreamReader(responseStream, StandardCharsets.UTF_8);
        JSONParser parser = new JSONParser();
        JSONObject jsonObject = (JSONObject) parser.parse(reader);
        responseStream.close();
        model.addAttribute("responseStr", jsonObject.toJSONString());
        System.out.println(jsonObject.toJSONString());

        model.addAttribute("method", (String) jsonObject.get("method"));
        model.addAttribute("user_id", (String) jsonObject.get("user_id"));

        if (((String) jsonObject.get("method")) != null) {
            if (((String) jsonObject.get("method")).equals("카드")) {
                model.addAttribute("cardNumber", (String) ((JSONObject) jsonObject.get("card")).get("number"));
            } else if (((String) jsonObject.get("method")).equals("가상계좌")) {
                model.addAttribute("accountNumber", (String) ((JSONObject) jsonObject.get("virtualAccount")).get("accountNumber"));
            } else if (((String) jsonObject.get("method")).equals("계좌이체")) {
                model.addAttribute("bank", (String) ((JSONObject) jsonObject.get("transfer")).get("bank"));
            } else if (((String) jsonObject.get("method")).equals("휴대폰")) {
                model.addAttribute("customerMobilePhone", (String) ((JSONObject) jsonObject.get("mobilePhone")).get("customerMobilePhone"));
            }
        } else {
            model.addAttribute("code", (String) jsonObject.get("code"));
            model.addAttribute("message", (String) jsonObject.get("message"));
        }

        return "user/success";
    }

    @GetMapping("/fail")
    public String paymentResult(
            Model model,
            @RequestParam(value = "message") String message,
            @RequestParam(value = "code") Integer code
    ) throws Exception {

        model.addAttribute("code", code);
        model.addAttribute("message", message);

        return "user/fail";
    }
}
