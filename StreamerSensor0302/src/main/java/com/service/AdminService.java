package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.AdminDAO;
import com.domain.Admin;
import com.domain.SiteInfo;

@Service
public class AdminService {
	
	@Autowired
	AdminDAO dao;
	
	public Admin getAdmin(int adminId) {
		
		Admin admin = dao.getAdminInfo(adminId);
		
		if(adminId == 5) {
			admin.setSuperAdmin(true);
		} else {
			admin.setSuperAdmin(false);
		}
		dao.updateAdminInfo(adminId);
		
		return admin;
	}
	
	public List<Admin> getAllAdmin(){
		return dao.getAllAdmin();
	}
	
	public SiteInfo getSiteInfo(int sales, int visitCount) {
		
		SiteInfo info1 = new SiteInfo();
		SiteInfo info2 = new SiteInfo();
		SiteInfo result_info = new SiteInfo();
		
		int compare_total_revenue;
		int compare_visit_count;
		
		double increase_revenue;
		double increase_visit;
		
		info1 = dao.getSiteInfo().get(1);
		info2 = dao.getSiteInfo().get(0);
		
		compare_total_revenue = info2.getTotal_revenue() - info1.getTotal_revenue();
		compare_visit_count = info2.getVisit_count() - info1.getVisit_count();
		
		increase_revenue = (float) compare_total_revenue / info2.getTotal_revenue() * 100;
		increase_visit = (float) compare_visit_count / info2.getVisit_count() * 100;
		
		
		int total_revenue = info2.getTotal_revenue();
		total_revenue += sales;
		int total_visit = info2.getVisit_count();
		total_visit += visitCount;
		result_info.setTotal_revenue(total_revenue);
		result_info.setVisit_count(total_visit);
		
		result_info.setDayVisit(visitCount);
		result_info.setTotalSales(sales);
		result_info.setIncrease_revenue( Math.round(increase_revenue * 100.0) / 100.0);
		result_info.setIncrease_visit(Math.round(increase_visit * 100.0)/ 100.0);
		
		return result_info;
	}
	
	public void updateVisitCount(int visit_count) {
		dao.updateVisitCount(visit_count);
	}
	
	
}
