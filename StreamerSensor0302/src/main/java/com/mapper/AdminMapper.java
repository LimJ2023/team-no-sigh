package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.domain.Admin;
import com.domain.SiteInfo;


public interface AdminMapper {

	@Select("select admin_id, admin_name, admin_pw, email, created_at "
			+ "from admin "
			+ "WHERE admin_id = #{admin_id}")
	Admin getAdminInfo(int admin_id);
	@Select("select admin_id, admin_name, admin_pw, email, created_at, to_char(last_login) last_login "
			+ "from admin "
			+ "WHERE last_login is not null "
			+ "order by last_login desc")
	List<Admin> getAllAdmin();
	
	@Update("update admin set last_login = sysdate "
			+ "WHERE admin_id = #{admin_id}")
	void updateAdminInfo(int admin_id);
	
	
	@Select("select stat_id, total_revenue, visit_count, site_stat_date "
			+ "from site_stat "
			+ "order by site_stat_date desc")
	List<SiteInfo> getSiteInfo();
	
	@Update("UPDATE site_stat set visit_count = #{visit_count} "
			+ "where stat_id = (select MAX(s2.stat_id) "
			+ "	FROM site_stat s2);")
	void updateVisitCount(int visit_count);
	
	
}
