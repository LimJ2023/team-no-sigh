package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.domain.Admin;
import com.domain.SiteInfo;

@Service
public class AdminService {
	
	@Autowired
	JdbcDAO dao;
	
	
	public Admin getAdmin() {
		
		Admin bean = new Admin();
		bean = dao.select_adminYohan().get(0);
		return bean;
	}
	
	public SiteInfo getSiteInfo() {
		SiteInfo info1 = new SiteInfo();
		SiteInfo info2 = new SiteInfo();
		SiteInfo result_info = new SiteInfo();
		
		int compare_total_revenue;
		int compare_visit_count;
		
		double increase_revenue;
		double increase_visit;
		
		info1 = dao.select_SiteInfo().get(0);
		info2 = dao.select_SiteInfo().get(1);
		
		compare_total_revenue = info2.getTotal_revenue() - info1.getTotal_revenue();
		compare_visit_count = info2.getVisit_count() - info1.getVisit_count();
		
		increase_revenue = (float) compare_total_revenue / info1.getTotal_revenue() * 100;
		increase_visit = (float) compare_visit_count / info1.getVisit_count() * 100;
		
		result_info.setTotal_revenue(info1.getTotal_revenue());
		result_info.setVisit_count(info1.getVisit_count());
		
		result_info.setIncrease_revenue( Math.round(increase_revenue * 100.0) / 100.0);
		result_info.setIncrease_visit(Math.round(increase_visit * 100.0)/ 100.0);
		
		return result_info;
	}
}
