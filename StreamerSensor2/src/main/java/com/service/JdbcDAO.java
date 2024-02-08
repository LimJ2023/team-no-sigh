package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.domain.Admin;
import com.mapper.AdminMapper;

@Component
public class JdbcDAO {

	@Autowired
	private JdbcTemplate db;
	@Autowired
	AdminMapper adMapper;

	public List<Admin> select_adminYohan() {

		String sql = "select admin_name, email from admin where admin_id = 1";
		List<Admin> admin = db.query(sql, adMapper);
		return admin;
	}

	public List<Admin> select_adminJinhun() {

		String sql = "select admin_name, email from admin where admin_id = 3";
		List<Admin> admin = db.query(sql, adMapper);
		return admin;
	}

	public Admin select_adminJisooName() {

		String sql = "select admin_name from admin where admin_id = 2";
		Admin bean = new Admin();
		String name = db.queryForObject(sql, String.class);
		bean.setAdmin_name(name);
		return bean;
	}

	/*
	 * //#1 저장 public void insert_data(AdminBean bean) { String sql =
	 * "insert into jdbc_table (int_data, str_data) values(?, ?)";
	 * 
	 * //db.update(sql, bean.getInt_data(), bean.getStr_data()); }
	 * 
	 * //#2 조회 public List<AdminBean> select_data() { String sql =
	 * "select int_data, str_data from jdbc_table"; //List<AdminBean> list =
	 * db.query(sql, mapper); return null; }
	 * 
	 * //#3 수정 public void update_data(AdminBean bean) { String sql =
	 * "update jdbc_table set str_data = ? where int_data = ?"; //db.update(sql,
	 * bean.getStr_data(), bean.getInt_data()); }
	 * 
	 * //#4 삭제 public void delete_data(int int_data) { String sql =
	 * "delete from jdbc_table where int_data = ?"; db.update(sql, int_data); }
	 */

}
