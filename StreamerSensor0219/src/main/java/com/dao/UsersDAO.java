package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.Users;
import com.mapper.UserMapper;

@Repository
public class UsersDAO {


	@Autowired
	UserMapper mapper;

	
	public Users getUserByNumber(int user_num) {
		return mapper.getUserByNumber(user_num);
	}
	
	public List<Users> getAllUsers() {
		return mapper.getAllUsers();
	}
	
	
}
