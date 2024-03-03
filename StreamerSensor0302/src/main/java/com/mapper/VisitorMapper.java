package com.mapper;

import org.apache.ibatis.annotations.Insert;

import com.domain.Visitor;

public interface VisitorMapper {
	
	@Insert("INSERT INTO visitor (visit_id,visit_ip,visit_time,visit_agent) "
			+ " VALUES (VISITOR_ID_SEQ.nextval, #{visit_ip}, #{visit_time}, #{visit_agent})")
	Visitor insertVisitData();
	
	
}
