package com.config;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.beans.UserBean;
import com.domain.Admin;
import com.interceptor.CheckLoginInterceptor;

import com.interceptor.LoginMenuInterceptor;
import com.mapper.AdminMapper;
import com.mapper.LoginMenuMapper;
import com.mapper.RankingMapper;
import com.mapper.ReviewMapper;
import com.mapper.StreamerMapper;
import com.mapper.UsersMapper;
import com.service.LoginMenuService;
import com.beans.UsersBean;


@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.service", "com.dao", "com.controller", "com.mapper" })
@PropertySource("/WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer {

	@Value("${db.classname}")
	private String db_classname;
	// db.classname 은 properties에 있음 / db_classname라는 변수에 넣어줄거야

	@Value("${db.url}")
	private String db_url;

	@Value("${db.username}")
	private String db_username;

	@Value("${db.password}")
	private String db_password;

	@Resource(name = "adminBean")
	private Admin adminBean;
	
	@Resource(name="loginUserBean")
	private UsersBean loginUserBean;
	
	  @Autowired private LoginMenuService loginMenuService;
	 

	// Controller 메서드가 반환하는 jsp 이름 앞뒤에 경로, 확장자 설정
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/view/", ".jsp");
	}

	// 정적 파일 경로 매핑
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("**").addResourceLocations("/resources/");
	}

	// 데이터베이스 접속 정보를 관리하는 Bean
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);

		return source;
	}

	// 쿼리문과 접속 정보를 관리하는 객체
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception {
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		SqlSessionFactory factory = factoryBean.getObject();
		return factory;
	}

	// 쿼리문 실행을 위한 객체(Mapper 관리)
	@Bean
	public MapperFactoryBean<AdminMapper> getAdminMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<AdminMapper> factoryBean = new MapperFactoryBean<AdminMapper>(AdminMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<RankingMapper> getRankingMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<RankingMapper> factoryBean = new MapperFactoryBean<RankingMapper>(RankingMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<UsersMapper> getUsersMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<UsersMapper> factoryBean = new MapperFactoryBean<UsersMapper>(UsersMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<ReviewMapper> getReviewMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<ReviewMapper> factoryBean = new MapperFactoryBean<ReviewMapper>(ReviewMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<StreamerMapper> getStreamerMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<StreamerMapper> factoryBean = new MapperFactoryBean<StreamerMapper>(StreamerMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	   public MapperFactoryBean<LoginMenuMapper> getLoginMenuMapper(SqlSessionFactory factory) throws Exception{
	      MapperFactoryBean<LoginMenuMapper> factoryBean = new MapperFactoryBean<LoginMenuMapper>(LoginMenuMapper.class);
	      factoryBean.setSqlSessionFactory(factory);
	      return factoryBean;
	   }
	
	@Bean
	   public MapperFactoryBean<BoardMapper> getBoardMapper(SqlSessionFactory factory) throws Exception{
	      MapperFactoryBean<BoardMapper> factoryBean = new MapperFactoryBean<BoardMapper>(BoardMapper.class);
	      factoryBean.setSqlSessionFactory(factory);
	      return factoryBean;
	   }
	

	// 쿼리를 전달하는 빈 등록
	@Bean
	public JdbcTemplate db(BasicDataSource source) {
		JdbcTemplate db = new JdbcTemplate(source);
		return db;
	}
	
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		res.setDefaultEncoding("UTF-8");
		res.setBasenames("/WEB-INF/properties/error_message");
		return res;
	}
	
	@Bean
	public static PropertySourcesPlaceholderConfigurer PropertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	
	@Bean
	public StandardServletMultipartResolver multipartResolver() {
		return new StandardServletMultipartResolver();
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		WebMvcConfigurer.super.addInterceptors(registry);
		
		
		  LoginMenuInterceptor loginMenuInterceptor = new
				  LoginMenuInterceptor(loginMenuService,loginUserBean);
		 
		  InterceptorRegistration reg1 = registry.addInterceptor(loginMenuInterceptor);
		  reg1.addPathPatterns("/**"); //모든 요청 주소에 동작(실행)
		 		
		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor(loginUserBean);
		InterceptorRegistration reg2 = registry.addInterceptor(checkLoginInterceptor);
		reg2.addPathPatterns("/user/myPage", "/user/logout");
		reg2.excludePathPatterns("/board/main");
		
		
	}
}
