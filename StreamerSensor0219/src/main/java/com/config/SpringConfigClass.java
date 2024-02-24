package com.config;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

public class SpringConfigClass implements WebApplicationInitializer{

	
	public void onStartup(ServletContext servletContext) throws ServletException {	
		
	
		AnnotationConfigWebApplicationContext servletAppContext 
		= new AnnotationConfigWebApplicationContext();
	      servletAppContext.register(ServletAppContext.class);
		
		DispatcherServlet dispatcherServlet 
		= new DispatcherServlet(servletAppContext);
		ServletRegistration.Dynamic servlet 
		= servletContext.addServlet("dispatcher", dispatcherServlet);
		
		//부가설정
		servlet.setLoadOnStartup(1);
		servlet.addMapping("/");
		
		//빈을 정의하는 클래스 지정
		AnnotationConfigWebApplicationContext rootAppContext = new AnnotationConfigWebApplicationContext();
		rootAppContext.register(RootAppContext.class);
		ContextLoaderListener listener = new ContextLoaderListener(rootAppContext);
		servletContext.addListener(listener);
		//파라미터 인코딩 설정
		FilterRegistration.Dynamic filter = servletContext.addFilter("encodingFilter", CharacterEncodingFilter.class);
		filter.setInitParameter("encoding", "UTF-8");
		
		filter.addMappingForServletNames(null, false, "dispatcher");
		
		
		
	}

}