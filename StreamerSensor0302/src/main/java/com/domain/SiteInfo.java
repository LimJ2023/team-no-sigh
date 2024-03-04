package com.domain;

import java.sql.Date;

public class SiteInfo {
	
	private int stat_id;
	private int total_revenue;
	private int visit_count;
	private String site_stat_date;
	
	private double increase_revenue;
	private double increase_visit;
	
	
	
	public double getIncrease_revenue() {
		return increase_revenue;
	}
	public void setIncrease_revenue(double increase_revenue) {
		this.increase_revenue = increase_revenue;
	}
	public double getIncrease_visit() {
		return increase_visit;
	}
	public void setIncrease_visit(double increase_visit) {
		this.increase_visit = increase_visit;
	}
	public int getTotal_revenue() {
		return total_revenue;
	}
	public void setTotal_revenue(int total_revenue) {
		this.total_revenue = total_revenue;
	}
	public int getVisit_count() {
		return visit_count;
	}
	public void setVisit_count(int visit_count) {
		this.visit_count = visit_count;
	}
	public String getSite_stat_date() {
		return site_stat_date;
	}
	public void setSite_stat_date(String site_stat_date) {
		this.site_stat_date = site_stat_date;
	}
	public int getStat_id() {
		return stat_id;
	}
	public void setStat_id(int stat_id) {
		this.stat_id = stat_id;
	}
	
	
}
