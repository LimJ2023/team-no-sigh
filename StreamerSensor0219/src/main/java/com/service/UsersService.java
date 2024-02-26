package com.service;

import java.util.ArrayList;
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

	public Users printOneUser() {
		Users userBean = new Users();
		userBean = uDAO.printOneUser(1);
		return userBean;
	}

	public List<Users> getSubUsers() {

		List<Users> list = uDAO.getAllUsers();
		List<Users> result = new ArrayList<Users>();

		for (Users user : list) {
			if (user.getSubscription() != null && user.getSubscription().equals("y")) {
				result.add(user);
			}
		}

		return result;

	}

}
