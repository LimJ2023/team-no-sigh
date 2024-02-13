package main.java.com.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "main.java.com.controller")
public class ServletAppContext implements WebMvcConfigurer{
	
	//Controller 메서드가 반환하는 jsp 이름 앞뒤에 경로, 확장자 설정
	@Override
	   public void configureViewResolvers(ViewResolverRegistry registry) {
	      WebMvcConfigurer.super.configureViewResolvers(registry);
	      registry.jsp("/view/", ".jsp");
	   }

	//정적 파일 경로 매핑
	@Override
	   public void addResourceHandlers(ResourceHandlerRegistry registry) {
	      WebMvcConfigurer.super.addResourceHandlers(registry);      
	      registry.addResourceHandler("**").addResourceLocations("/resources/");
	   }
	
}
