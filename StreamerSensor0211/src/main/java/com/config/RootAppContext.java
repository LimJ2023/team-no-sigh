package com.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;

@Configuration
@ComponentScan(basePackages = {"com.service", "com.mapper"})
public class RootAppContext {
	
	@Bean
	public BasicDataSource source() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName("oracle.jdbc.OracleDriver");
		//source.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
		
		source.setUrl("jdbc:oracle:thin:@192.168.123.141:1521:xe");
		
		source.setUsername("streamer");
		source.setPassword("12345");
		return source;
	}
	
	//쿼리를 전달하는 빈 등록
	@Bean
	public JdbcTemplate db(BasicDataSource source) {
		JdbcTemplate db = new JdbcTemplate(source);
		return db;
	}
}
