package com.controller;

import java.io.IOException;
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
	
}
