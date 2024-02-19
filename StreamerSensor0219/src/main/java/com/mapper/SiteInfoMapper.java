package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.domain.SiteInfo;

@Component
public class SiteInfoMapper implements RowMapper<SiteInfo>{

	@Override
	public SiteInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
		SiteInfo info = new SiteInfo();
		info.setTotal_revenue(rs.getInt("total_revenue"));
		info.setVisit_count(rs.getInt("visit_count"));
		return info;
	}
	
	
}
