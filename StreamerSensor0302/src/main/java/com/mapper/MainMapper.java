package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.domain.Carousel_Test;

@Mapper
public interface MainMapper {

	@Select("SELECT * FROM main_carousel_test")
	List<Carousel_Test> getTest();
	
}
