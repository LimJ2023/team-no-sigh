package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.domain.Admin;

@Service
public class AdminService {
	
	@Autowired
	JdbcDAO dao;
	
	
	public Admin getAdmin() {
		
		Admin bean = new Admin();
		bean = dao.select_adminYohan().get(0);
		return bean;
	}
}
