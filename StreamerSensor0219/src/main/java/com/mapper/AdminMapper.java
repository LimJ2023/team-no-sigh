package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.domain.Admin;
import com.domain.SiteInfo;


public interface AdminMapper {

	@Select("select admin_name, email "
			+ "from admin "
			+ "where admin_id = #{admin_id}")
	Admin getAdminInfo(int admin_id);
	
	@Select("select stat_id, total_revenue, visit_count, timestamp "
			+ "from site_stat ")
	List<SiteInfo> getSiteInfo();
	
	
	
}
