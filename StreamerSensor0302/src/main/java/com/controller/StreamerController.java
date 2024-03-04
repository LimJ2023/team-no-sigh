package com.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.beans.StreamerBean;
import com.domain.GradeCount;
import com.domain.SiteInfo;
import com.domain.Streamer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.service.StreamerService;

@RestController
@Component
public class StreamerController extends HttpServlet {
	
	@Autowired
	private StreamerService streamerService;
	
	@PostMapping("StreamerFollowers")
	protected void followers(@RequestBody StreamerBean bean, HttpServletResponse resp)
			throws ServletException, IOException{
		List<Streamer> data = streamerService.getStreamerFollowers();
		
		resp.setContentType("application/json");
	    resp.setCharacterEncoding("UTF-8");
	    resp.getWriter().write(new ObjectMapper().writeValueAsString(data));
	}
	
	@PostMapping("GradeCount")
	protected void Counts(@RequestBody StreamerBean bean, HttpServletResponse resp)
			throws ServletException, IOException{
		List<GradeCount> data = streamerService.getGradeCount();
		
		resp.setContentType("application/json");
	    resp.setCharacterEncoding("UTF-8");
	    resp.getWriter().write(new ObjectMapper().writeValueAsString(data));
	}
	
	@PostMapping("SiteStatDate")
	protected void Date(@RequestBody SiteInfo bean, HttpServletResponse resp)
			throws ServletException, IOException{
		List<SiteInfo> data = streamerService.getSiteStatDate();
		
		resp.setContentType("application/json");
	    resp.setCharacterEncoding("UTF-8");
	    resp.getWriter().write(new ObjectMapper().writeValueAsString(data));
	}
	
}
