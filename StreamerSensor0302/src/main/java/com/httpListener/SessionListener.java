package com.httpListener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionListener implements HttpSessionListener{

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		int currentCount = (int) se.getSession().getServletContext().getAttribute("visitorCount");
		
		// 최초 세션 생성 시 또는 세션이 만료된 후 새로 생성된 경우
        if (currentCount == 0 ) {
            currentCount = 1;
        } else {
            currentCount++;
        }
        
        se.getSession().getServletContext().setAttribute("visitorCount", currentCount);
        
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
		HttpSessionListener.super.sessionDestroyed(se);
	}
	
	
}
