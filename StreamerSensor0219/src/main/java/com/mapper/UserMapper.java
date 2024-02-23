package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.domain.Users;

public interface UserMapper {

	@Select("SELECT * "
			+ "FROM users "
			+ "WHERE user_num = #{user_num}")
	Users getUserByNumber(int user_num);
	
	@Select("select * from users")
	List<Users> getAllUsers();
}
