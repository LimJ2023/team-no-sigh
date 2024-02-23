package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.Admin;
import com.domain.SiteInfo;
import com.mapper.AdminMapper;

@Repository
public class AdminDAO {

	@Autowired
	AdminMapper adminMapper;
	
	public Admin getAdminInfo(int admin_id) {
		return adminMapper.getAdminInfo(admin_id);
	}
	
	public List<SiteInfo> getSiteInfo() {
		return adminMapper.getSiteInfo();
	}
}
