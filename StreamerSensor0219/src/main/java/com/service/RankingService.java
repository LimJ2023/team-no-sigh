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
import com.domain.Ranking;

@Service
public class RankingService {

	
	@Autowired
	RankingDAO rankingDAO;
	
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
	
	
	
	public List<Ranking> liveApi(){
		
		String channelId = "UC-lHJZR3Gqxm24_Vd_AJ5Yw";
		String apiKey = "AIzaSyCNUTsRVT4N2-lGyPxsWtzq97yIfPIi4zA";
		
		String urlStr = "https://youtube.googleapis.com/youtube/v3/"
				+ "search?part=snippet&channelId="
				+ channelId
				+ "&maxResults=5&type=video&key="
				+ apiKey;
		
		StringBuilder sb = new StringBuilder();
		
		try{
			
			URL u = new URL(urlStr);
			URLConnection conn = u.openConnection();
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line;
			while((line = br.readLine()) != null) {
				sb.append(line + "\n");
			}
			} catch (MalformedURLException e) {
				e.printStackTrace();
			}
		
		catch(IOException e) {
				e.printStackTrace();
			}
			List<Ranking> rankings = new ArrayList<>();
			JSONObject jsonObj = new JSONObject(sb.toString());
			JSONArray items = jsonObj.getJSONArray("items");
			
			for(int i = 0; i < items.length(); i++) {
				JSONObject item = items.getJSONObject(i);
				String videoTitle = item.getJSONObject("snippet").getString("title");
				
				Ranking ranking = new Ranking();
				ranking.setStreaming_description(videoTitle);
				
				rankings.add(ranking);
			}
			
		
		
		return rankings;
		
		
	}
	
	/*
	public List<Ranking> liveApi(){
	
		String channelId = "UC-lHJZR3Gqxm24_Vd_AJ5Yw";
		String apiKey = "AIzaSyCNUTsRVT4N2-lGyPxsWtzq97yIfPIi4zA";
		
		String urlStr = "https://youtube.googleapis.com/youtube/v3/"
				+ "search?part=snippet&channelId="
				+ channelId
				+ "&maxResults=5&type=video&key="
				+ apiKey;
		
		StringBuilder sb = new StringBuilder();
		
		try{
			
			URL u = new URL(urlStr);
			URLConnection conn = u.openConnection();
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line;
			while((line = br.readLine()) != null) {
				sb.append(line + "\n");
			}
			} catch (MalformedURLException e) {
				e.printStackTrace();
			}
		
		catch(IOException e) {
				e.printStackTrace();
			}
			List<Ranking> rankings = new ArrayList<>();
			JSONObject jsonObj = new JSONObject(sb.toString());
			JSONArray items = jsonObj.getJSONArray("items");
			
			for(int i = 0; i < items.length(); i++) {
				JSONObject item = items.getJSONObject(i);
				String videoTitle = item.getJSONObject("snippet").getString("title");
				
				Ranking ranking = new Ranking();
				ranking.setStreaming_description(videoTitle);
				
				rankings.add(ranking);
			}
			
		
		
		return rankings;
		
		
	}
	*/
	/*
	public List<Ranking> liveApi() throws IOException{
		
		URL u = new URL("https://youtube.googleapis.com/youtube/v3/liveBroadcasts?part=status&broadcastStatus=active&maxResults=5&key=AIzaSyCNUTsRVT4N2-lGyPxsWtzq97yIfPIi4zA");
		URLConnection conn = u.openConnection();
		StringBuilder sb = new StringBuilder();
		
		try(BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()))){
			String line;
			while((line = br.readLine()) != null) {
				sb.append(line + "\n");
			}
		}
		

		
		List<Ranking> rankings = new ArrayList<>();
		JSONObject jsonObj = new JSONObject(sb.toString());
		JSONArray items = jsonObj.getJSONArray("items");
		
		for(int i = 0; i < items.length(); i++) {
			JSONObject item = items.getJSONObject(i);
			String liveTitle = item.getJSONObject("snippet").getString("title");
			
			Ranking ranking = new Ranking();
			ranking.setStreaming_description(liveTitle);
			
			rankings.add(ranking);
		}
		
		
		return rankings;
		
		
	}
*/
	
	
	
}
