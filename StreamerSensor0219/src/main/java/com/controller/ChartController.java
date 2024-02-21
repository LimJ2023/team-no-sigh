package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.ChartData;
import com.service.ChartService;

@Controller
public class ChartController {

    @Autowired
    private ChartService chartService;

    @GetMapping("/chartData")
    public List<ChartData> getChartData() {
        return chartService.getAllChartData();
    }
    
    @RequestMapping(value = "/chart")
    public String chartPage(Model model) {
    	return "/chart/chart";
    }
}
