package com.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.beans.UserBean;



public class CheckLoginInterceptor implements HandlerInterceptor{

	//로그인 여부를 판단하는 loginUserBean
	private UserBean loginUserBean;
	
	public CheckLoginInterceptor(UserBean loginUserBean) {
		this.loginUserBean=loginUserBean;
	}

	//prehandle만 체크
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//로그인을 하지 않았다면
		if (loginUserBean.isUserLogin() == false) {
			//로그인 하지 않은 경로 호출
			String contextPath = request.getContextPath();
			//로그인이 되지 않았으므로 웹 브라우저에게 not_login 요청지시
			response.sendRedirect(contextPath + "/user/not_login");
			return false;
		}
		//로그인 되어있는 상태
		return true;
	}
	
	
	
}
