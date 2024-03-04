package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.domain.Admin;
import com.domain.SiteInfo;


public interface AdminMapper {

	@Select("select admin_name, email "
			+ "from admin "
			+ "where admin_id = #{admin_id}")
	Admin getAdminInfo(int admin_id);
	
	@Select("select stat_id, total_revenue, visit_count, timestamp "
			+ "from site_stat "
			+ "order by timestamp desc")
	List<SiteInfo> getSiteInfo();
	
	@Update("UPDATE site_stat set visit_count = #{visit_count} "
			+ "where stat_id = (select MAX(s2.stat_id) "
			+ "	FROM site_stat s2);")
	void updateVisitCount(int visit_count);
	
	
}
