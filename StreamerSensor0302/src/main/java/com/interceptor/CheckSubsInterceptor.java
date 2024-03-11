package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.beans.UsersBean;
import com.domain.Users;

public class CheckSubsInterceptor implements HandlerInterceptor{
/*
	private Users loginUserBean;
	
	public CheckSubsInterceptor(Users loginUserBean) {
		this.loginUserBean = loginUserBean;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String streamingDate = request.getParameter("streaming_date");
		
		if (streamingDate != null && (loginUserBean == null || "n".equals(loginUserBean.getSubscription()))) {
		//if(loginUserBean.getSubscription().equals("n")) {
			//서브스크립션이 n 이라면 = 구독 X 라면
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/leaderBoard/not_subscribed");
			return false;
		}
		
		return true;
	}
	
	*/
	
}
