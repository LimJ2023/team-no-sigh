package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.domain.Users;

@Component
public class UsersMapper implements RowMapper<Users>{

	@Override
	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {

		Users users = new Users();
		users.setUser_num(rs.getInt("user_num"));
		users.setUser_name(rs.getString("user_name"));
		users.setUser_pw(rs.getString("user_pw"));
		users.setUser_id(rs.getString("user_id"));
		users.setUser_gen(rs.getString("user_gen"));
		users.setUser_age(rs.getInt("user_age"));
		users.setUser_na(rs.getString("user_na"));
		
		users.setSubscription(rs.getString("subscription"));
		
		return users;
	}

	
	
	
	
}
