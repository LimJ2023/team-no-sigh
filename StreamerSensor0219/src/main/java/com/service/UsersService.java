package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.domain.Users;

@Service
public class UsersService {

	@Autowired
	UsersDAO uDAO;
	
	public Users getUsers() {
		Users usersBean = new Users();
		usersBean = uDAO.select_user().get(0);
		return usersBean;
	}
	/*
	public Users getUsers2() {
		
		Users usersBean = new Users();
		usersBean = uDAO.select_user_2().get(0);
		return usersBean;
		
	}*/
	
	public List<Users> printUsers() {
		return uDAO.print_user();
	}
	
	public Users oneByOne_Users() {
		
		Users usersBean = new Users();
		usersBean = uDAO.oneByOne_user().get(0);
		
		return usersBean;
	
	}

}
