package com.domain;

public class SiteInfo {
	
	private int total_revenue;
	private int visit_count;
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
	
	
}