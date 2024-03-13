package com.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import com.dao.RankingDAO;
import com.domain.Likes;
import com.domain.Ranking;
import com.domain.Video;
import com.mapper.RankingMapper;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class RankingService {

	
	@Autowired
	RankingDAO rankingDAO;
	
	@Autowired
	RankingMapper rankingMapper;
	public List<Ranking> getRankings() {
		return rankingDAO.getRanking();
	}
	public int getSumAVG() {
		return rankingDAO.getSumAvg();
	}
	
	public int getSumAvgByDate(String streamingDate) {
		return rankingDAO.getSumAvgByDate(streamingDate);
	}
	
	public int getSumLikes() {
		return rankingDAO.getLikes();
	}
	
	public int getSumDaily() {
		return rankingDAO.getDaily_viewers();
	}

	
	
	//20240229 이지수
	public List<Video> popVideoApi(){
		
		String apiKey = "AIzaSyCwFnwxzyfa7m1MI5huBVUBuAnUzKKyUQ8";
		
		String urlStr = "https://youtube.googleapis.com/youtube/v3/"
				+ "videos?part=snippet%2CcontentDetails%2Cstatistics&chart=mostPopular"
				+ "&maxResults=5&"
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
		
		List<Video> popRankings = new ArrayList<>();
		JSONObject jsonObj = new JSONObject(sb.toString());
		JSONArray items = jsonObj.getJSONArray("items");
		
		for(int i=0; i < items.length(); i++) {
			JSONObject item = items.getJSONObject(i);
			String videoTitle = item.getJSONObject("snippet").getString("title");
			//0228
			String thumbnail_url = item.getJSONObject("snippet").getJSONObject("thumbnails").getJSONObject("high").getString("url");
			
			Video video= new Video();
			video.setVideo_title(videoTitle);
			
			
			//0228
			
			video.setThumbnail_url(thumbnail_url);
						
			String videoId = item.getString("id");
			video.setVideo_id(videoId);
			
			String urlStr2 = "https://youtube.googleapis.com/youtube/v3/videos?"
					+ "part=snippet%2CcontentDetails%2Cstatistics&id="
					+ video.getVideo_id()
					+ "&maxResults=5&key="
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
				
			long videoCommentCount = statistics.getLong("commentCount");
			long videoLikeCount = statistics.optLong("likeCount", 0);
			
			video.setVideo_like_count(videoLikeCount);
			video.setVideo_comment_count(videoCommentCount);
				
			popRankings.add(video);

		}//for
		
		
		return popRankings;
	}
	
	public List<Ranking> getRankingByDate(String streamingDate) {
	    return rankingDAO.getRankingByDate(streamingDate);
	}
	
	public void addLikes(Likes addFavorites) {
		rankingDAO.addLikes(addFavorites);
	}
	
	public int getLikesByDate(String streamingDate) {
		return rankingDAO.getLikesByDate(streamingDate);
	}
	
	public int getDaily_viewersByDate(String streamingDate) {
		return rankingDAO.getDaily_viewersByDate(streamingDate);
	}
	

}
