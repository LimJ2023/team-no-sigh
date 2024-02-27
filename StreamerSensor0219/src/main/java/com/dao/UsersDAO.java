package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beans.UserBean;
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
	
	
	public Users printOneUser(int user_idx) {
		return mapper.printOneUser(user_idx);
	}
	public String checkUserIdExist(String user_id) {
		return mapper.checkUserIdExist(user_id);
	}
	
	
	public void addUserInfo(UserBean joinUserBean) {
		mapper.addUserInfo(joinUserBean);
	}
	
	public UserBean getLoginUserInfo(UserBean tempLoginUserBean) {
		return mapper.getLoginUserInfo(tempLoginUserBean);
	}
	
	public UserBean getmodifyUserinfo(int user_idx) {
		return mapper.getmodifyUserinfo(user_idx);
	}
	
	public void modifyUserInfo(UserBean modifyUserBean) {
		mapper.modifyUserInfo(modifyUserBean);
	}
}
