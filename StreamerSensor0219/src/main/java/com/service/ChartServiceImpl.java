package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.model.ChartData;

@Service
public class ChartServiceImpl implements ChartService{
	
	@Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<ChartData> getAllChartData() {
        String sql = "SELECT x_column, y_column FROM your_table";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            ChartData data = new ChartData();
            data.setX(rs.getInt("x_column"));
            data.setY(rs.getInt("y_column"));
            return data;
        });
    }

}
