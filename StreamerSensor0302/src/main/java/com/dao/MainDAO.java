package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.domain.Carousel_Test;
import com.domain.Streamer;
import com.mapper.MainMapper;

@Repository
public class MainDAO {

	@Autowired
	MainMapper mapper;
	/*
	public List<Carousel_Test> getTest(){
		return mapper.getTest();
	}*/
	
	public List<Streamer> getFiveStreamer(){
		return mapper.getFiveStreamer();
	}

	public List<Streamer> getRandomSugg(){
		return mapper.getRandomSugg();
	}

	
}
