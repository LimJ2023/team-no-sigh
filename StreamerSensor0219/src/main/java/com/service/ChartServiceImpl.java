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
        String sql = "SELECT strm_id, strm_Followers FROM streamer";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            ChartData data = new ChartData();
            data.setX(rs.getInt("strm_id"));
            data.setY(rs.getInt("strm_Followers"));
            return data;
        });
    }

}
