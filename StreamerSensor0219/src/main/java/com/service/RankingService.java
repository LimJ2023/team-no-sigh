package com.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RankingDAO;
import com.dao.RankingDAO;
import com.domain.Ranking;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.mapper.RankingMapper;

@Service
public class RankingService {

	
	@Autowired
	RankingDAO rankingDAO;
	
	//20240227 이지수 DB API 테스트용
	@Autowired
	RankingMapper rankingMapper;
	//
	
	public List<Ranking> getRankings() {
		return rankingDAO.getRanking();
	}
	
	public int getSumAVG() {
		return rankingDAO.getSumAvg();
	}
	
	public int getSumLikes() {
		return rankingDAO.getLikes();
	}
	
	public int getSumDaily() {
		return rankingDAO.getDaily_viewers();
	}

	
	//2024-02-27 이지수 - Api 테스트

	public List<Ranking> popVideoApi(){
		
		String apiKey = "AIzaSyCNUTsRVT4N2-lGyPxsWtzq97yIfPIi4zA";
		
		String urlStr = "https://youtube.googleapis.com/youtube/v3/"
				+ "videos?part=snippet%2CcontentDetails%2Cstatistics&chart=mostPopular"
				+ "&maxResults=3&"
				+ "regionCode=KR"
				+ "&videoCategoryId=20" //게임 카테고리
				+ "&key="
				+ apiKey;		
		
		StringBuilder sb = new StringBuilder();
		
		try {
			URL u = new URL(urlStr);
			URLConnection conn = u.openConnection();
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line;
			while((line = br.readLine()) != null){
				sb.append(line + "\n");
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		List<Ranking> popRankings = new ArrayList<>();
		JSONObject jsonObj = new JSONObject(sb.toString());
		JSONArray items = jsonObj.getJSONArray("items");
		
		for(int i=0; i < items.length(); i++) {
			JSONObject item = items.getJSONObject(i);
			String videoTitle = item.getJSONObject("snippet").getString("title");
			
			Ranking ranking = new Ranking();
			ranking.setStreaming_description(videoTitle);
			
			String videoId = item.getString("id");
			ranking.setVideo_id(videoId);
			
			String urlStr2 = "https://youtube.googleapis.com/youtube/v3/videos?"
					+ "part=snippet%2CcontentDetails%2Cstatistics&id="
					+ ranking.getVideo_id()
					+ "&maxResults=3&key="
					+ apiKey;
			
			try {
				URL u2 = new URL(urlStr2);
				URLConnection conn2 = u2.openConnection();
				
				BufferedReader br2 = new BufferedReader(new InputStreamReader(conn2.getInputStream()));
				String line2;
				
				while((line2 = br2.readLine()) != null) {
					sb.append(line2 + "\n");
				}
			} catch (MalformedURLException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			JSONObject statistics = item.getJSONObject("statistics");
				
			long videoLikeCount = statistics.getLong("likeCount");
			long videoCommentCount = statistics.getLong("commentCount");
				
			ranking.setLikes(videoLikeCount);;
			ranking.setComments(videoCommentCount);
				
			popRankings.add(ranking);

			//rankingDAO.addVideoInfo(popRankings);
		}//for
		
		
		return popRankings;
	}
	
	/*public void addVideoInfo(List<Ranking> videoRankingBean) {
		rankingDAO.addVideoInfo(videoRankingBean);;
	}*/

}
