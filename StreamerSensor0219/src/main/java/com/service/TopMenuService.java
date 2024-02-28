package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beans.BoardInfoBean;
import com.dao.TopMenuDao;

@Service
public class TopMenuService {

	@Autowired
	   private TopMenuDao topMenuDao;
	   
	   
	   public List<BoardInfoBean> getTopMenuList(){
	      List<BoardInfoBean> topMenuList = topMenuDao.getTopMenuList();
	      return topMenuList;
	   }
}
