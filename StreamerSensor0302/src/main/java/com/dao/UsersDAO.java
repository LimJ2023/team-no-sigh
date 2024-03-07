package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//import com.beans.UsersBean;
import com.domain.Users;
import com.mapper.UsersMapper;

@Repository
public class UsersDAO {

	@Autowired
	private UsersMapper mapper;

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
		System.out.println("매퍼진입 유저체크 매서드 확인"+mapper.checkUserIdExist(user_id));
		return mapper.checkUserIdExist(user_id);
	}

	public void addUserInfo(Users joinUserBean) {
		mapper.addUserInfo(joinUserBean);
	}

	public Users getLoginUserInfo(Users tempLoginUserBean) {
		return mapper.getLoginUserInfo(tempLoginUserBean);
	}

	public Users getmodifyUserinfo(int user_idx) {
		return mapper.getmodifyUserinfo(user_idx);
	}

	public void modifyUserInfo(Users modifyUserBean) {
		mapper.modifyUserInfo(modifyUserBean);
	}
	
	//======================================================================================
	
	public void modifyMemberInfo(Users modifyMemberBean) {
		mapper.modifyMemberInfo(modifyMemberBean);
	}
	
	public void deleteMemberInfo(int user_idx) {
		mapper.deleteMemberInfo(user_idx);
	}
	
	public List<Users> selectBoardInfo(String user_id) {
		return mapper.selectBoardInfo(user_id);
	}
	
}
