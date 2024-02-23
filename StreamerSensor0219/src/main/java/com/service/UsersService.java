package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UsersDAO;
import com.domain.Users;

@Service
public class UsersService {

	@Autowired
	UsersDAO uDAO;
	
	
	public Users getUsers() {
		Users usersBean = new Users();
		usersBean = uDAO.getUserByNumber(2);
		return usersBean;
	}
	
	public List<Users> getAllUsers() {
		return uDAO.getAllUsers();
	}

}
