package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beans.LoginInfoBean;
import com.mapper.LoginMenuMapper;



@Repository
public class LoginMenuDao {

	@Autowired
	private LoginMenuMapper loginMenuMapper;
		//TopMenuMapper가 스프링 컨테이너에 등록이 되어있어야 한다
			
	
	
	public List<LoginInfoBean> getLoginMenuList(){
		List<LoginInfoBean> loginMenuList = loginMenuMapper.getLoginMenuList();
		return loginMenuList;
			//BoardInfoBean 객체의 list형태로 반환
	}
}
