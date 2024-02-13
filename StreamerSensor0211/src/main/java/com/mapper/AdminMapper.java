package main.java.com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import main.java.com.domain.Admin;

@Component
public class AdminMapper implements RowMapper<Admin>{

	@Override
	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Admin admin = new Admin();
		admin.setAdmin_name(rs.getString("admin_name"));
		admin.setEmail(rs.getString("email"));
		return admin;
	}

	
}
