package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.beans.UsersBean;
import com.domain.Users;

public interface UsersMapper {
	
	@Select("SELECT * "
			+ "FROM users "
			+ "WHERE user_idx = #{user_idx}")
	Users getUserByNumber(int user_idx);
	
	@Select("select * from users")
	List<Users> getAllUsers();
	
	@Select("select user_idx, user_name, user_gender, user_age, user_nation, subscription "
			+ "FROM users "
			+ "WHERE user_idx = #{user_idx}")
	Users printOneUser(int user_idx);
	
	@Select("SELECT user_name " +
			"FROM users " + 
			"WHERE user_id = #{user_id}")
	String checkUserIdExist(String user_id);
		//사용자의 이름을 반환하는 쿼리문
	
	@Insert("insert into users (user_idx, user_id, user_pw, user_name, user_gender, user_age, user_nation, subscription) " +
			"VALUES (user_seq.nextval, #{user_id}, #{user_pw}, #{user_name}, #{user_gender}, #{user_age}, #{user_nation}, #{subscription}")
	void addUserInfo(UsersBean joinUserBean);
	
	@Select("select user_idx, user_name "
			+ "from users "
			+ "where user_id=#{user_id} and user_pw=#{user_pw}")
	UsersBean getLoginUserInfo(UsersBean tempLoginUserBean);
	
	@Select("select user_id, user_name " +
			"from user_table "+
			"where user_idx = #{user_idx}")
	UsersBean getmodifyUserinfo(int user_idx);
	
	@Update("update user_table " +
			"set user_pw = #{user_pw} " +
			"where user_idx = #{user_idx}")
	void modifyUserInfo(UsersBean modifyUserBean);
	
	@Update("update users "
			+ "set user_name = #{user_name}, user_gender = #{user_gender}, "
			+ "user_age = #{user_age}, user_nation = #{user_nation}, subscription = #{subscription},"
			+ "user_image = #{user_image, jdbcType=VARCHAR} "
			+ "where user_idx = #{user_idx}")
	void modifyMemberInfo(Users modifyMemberBean);
	
	@Delete("DELETE FROM users WHERE user_idx = #{user_idx}")
	void deleteMemberInfo(int user_idx);

}
