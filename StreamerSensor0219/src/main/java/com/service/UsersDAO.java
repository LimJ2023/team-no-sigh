package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.domain.Users;
import com.mapper.UsersMapper;

@Component
public class UsersDAO {

	@Autowired
	private JdbcTemplate db;

	@Autowired
	UsersMapper uMapper;

	public List<Users> select_user() {
		String sql = "SELECT * FROM users WHERE user_num = 1";
		// String sql = "SELECT * FROM users WHERE user_num = 2";
		List<Users> users = db.query(sql, uMapper);
		return users;
	}


	public List<Users> print_user() {
		String sql = "select * from users";

		List<Users> users = db.query(sql, uMapper);
		return users;
	}

	public List<Users> oneByOne_user() {
		String sql = "select user_id, user_name, user_gen, user_age, user_na, subscription "
				+ "from users "
				+ "where user_num = #{user_num}";
		List<Users> users = db.query(sql, uMapper);
		return users;
	}

}
