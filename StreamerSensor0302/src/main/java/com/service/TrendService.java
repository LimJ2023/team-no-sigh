package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.StreamDAO;
import com.domain.StreamInfo;

@Service
public class TrendService {
	
	@Autowired
	StreamDAO streamDao;
	
	public List<StreamInfo> getAllStreams(){
		return streamDao.getAllStreamInfo();
	}
}
