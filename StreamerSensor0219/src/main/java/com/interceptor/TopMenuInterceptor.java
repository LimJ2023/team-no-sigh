package com.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.beans.BoardInfoBean;
import com.beans.UserBean;
import com.service.TopMenuService;



public class TopMenuInterceptor implements HandlerInterceptor{

	/*
	 * private TopMenuService topMenuService; private UserBean loginUserBean;
	 * 
	 * //생성자 통해 주입 public TopMenuInterceptor(TopMenuService topMenuService, UserBean
	 * loginUserBean) { this.topMenuService = topMenuService; this.loginUserBean =
	 * loginUserBean; }
	 * 
	 * 
	 * @Override public boolean preHandle(HttpServletRequest request,
	 * HttpServletResponse response, Object handler) throws Exception {
	 * List<BoardInfoBean> topMenuList = topMenuService.getTopMenuList();
	 * request.setAttribute("topMenuList", topMenuList);
	 * request.setAttribute("loginUserBean", loginUserBean);
	 * 
	 * return true; }
	 * 
	 */
	}
