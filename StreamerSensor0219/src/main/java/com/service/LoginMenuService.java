package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans.LoginInfoBean;
import com.dao.LoginMenuDao;



@Service
public class LoginMenuService {

	
	  @Autowired private LoginMenuDao loginMenuDao;
	  
	  
	  public List<LoginInfoBean> getLoginMenuList(){ List<LoginInfoBean> loginMenuList
	  = loginMenuDao.getLoginMenuList(); return loginMenuList; }
	 
}
