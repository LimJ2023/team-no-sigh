package com.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.beans.LoginInfoBean;
import com.domain.Users;
import com.service.LoginMenuService;


public class LoginMenuInterceptor implements HandlerInterceptor{

	
	  private LoginMenuService loginMenuService; private Users loginUserBean;
	
	  //생성자 통해 주입 
	  public LoginMenuInterceptor(LoginMenuService loginMenuService, Users loginUserBean) {
		this.loginMenuService = loginMenuService;
		this.loginUserBean = loginUserBean;
	}
	  
	  
	  @Override public boolean preHandle(HttpServletRequest request,
	  HttpServletResponse response, Object handler) throws Exception {
	  List<LoginInfoBean> loginMenuList = loginMenuService.getLoginMenuList();
	  request.setAttribute("loginMenuList", loginMenuList);
	  request.setAttribute("loginUserBean", loginUserBean);
	  
	  return true; }
	  
	 
	}
