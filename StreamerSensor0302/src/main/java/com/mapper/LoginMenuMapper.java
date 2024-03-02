package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.beans.LoginInfoBean;



public interface LoginMenuMapper {

	@Select("select Login_info_idx, Login_info_name " + "from Login_info_table " + "order by Login_info_idx")
	List<LoginInfoBean> getLoginMenuList();

}
