package com.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

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
	
	public List<Video> chzzkTest2(){
		String chzzkUrl = "https://api.chzzk.naver.com/service/v1/"
				+ "search/videos?"
				+ "keyword=game"
				+ "&offset=0"
				+ "&size=20"; //50 가능
		StringBuilder sb = new StringBuilder();
		
		try {
			URL u = new URL(chzzkUrl);
			//URLConnection conn = u.openConnection();
			HttpURLConnection conn = (HttpURLConnection)u.openConnection();
			int statusCode = conn.getResponseCode();
			System.out.println("HTTP Status Code: " + statusCode);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line;
			
			while((line = br.readLine()) != null){
				sb.append(line + "\n");
			}
		} catch (MalformedURLException e) {
			System.out.println("URL 형식 오류: " + e.getMessage());
			e.printStackTrace();
		} catch (IOException e) {
			System.out.println("IO 예외: " + e.getMessage());
			e.printStackTrace();
		}
		
		System.out.println("API 응답: " + sb.toString());
		
		
		List<Video> chzzkVideos2 = new ArrayList<>();
		
		
		try {
			String responseStr = sb.toString();
			JSONObject jsonResponse = new JSONObject(responseStr);
			JSONObject content = jsonResponse.getJSONObject("content");
			JSONArray data = content.getJSONArray("data");
			
			for(int i = 0; i <data.length(); i++) {
				JSONObject dataObj = data.getJSONObject(i);
				JSONObject video = dataObj.getJSONObject("video");
				String videoTitle = video.getString("videoTitle");
				//String liveImageUrl = videos.getString("liveImageUrl").replace("{type}", "default");
				int readCount = video.getInt("readCount");
				String thumbnailImageUrl = video.getString("thumbnailImageUrl");
				String categoryType = video.getString("categoryType");
				
				JSONObject channel = dataObj.getJSONObject("channel");
				String channelName = channel.getString("channelName");
				String channelId = channel.getString("channelId");
				String channelImageUrl = channel.getString("channelImageUrl");
				
				
				
				String chzzkUrl2 = "https://api.chzzk.naver.com/service/v1/channels/"
						+ channelId;
				StringBuilder sb2 = new StringBuilder();
				Video videoObj = new Video();
				try {
					URL u2 = new URL(chzzkUrl2);
					//URLConnection conn = u.openConnection();
					HttpURLConnection conn2 = (HttpURLConnection)u2.openConnection();
					int statusCode = conn2.getResponseCode();
					System.out.println("HTTP Status Code: " + statusCode);
					
					BufferedReader br2 = new BufferedReader(new InputStreamReader(conn2.getInputStream()));
					String line2;
					
					while((line2 = br2.readLine()) != null){
						sb2.append(line2 + "\n");
					}
				} catch (MalformedURLException e) {
					System.out.println("URL 형식 오류: " + e.getMessage());
					e.printStackTrace();
				} catch (IOException e) {
					System.out.println("IO 예외: " + e.getMessage());
					e.printStackTrace();
				}
				
				try {
					String responseStr2 = sb2.toString();
					JSONObject jsonResponse2 = new JSONObject(responseStr2);
					JSONObject content2 = jsonResponse2.getJSONObject("content");
				
					int followerCount = content2.getInt("followerCount");
						
					videoObj.setFollowerCount(followerCount);
						
				
				}catch (JSONException e) {
					System.out.println("내부 JSON 파싱 오류: " + e.getMessage());
					e.printStackTrace();
				}
				
				
				videoObj.setVideo_title(videoTitle);
				//video.setThumbnail_url(liveImageUrl);
				
				videoObj.setReadCount(readCount);
				videoObj.setChannelName(channelName);
				videoObj.setChannelId(channelId);
				videoObj.setThumbnail_url(thumbnailImageUrl);
				videoObj.setChannelImageUrl(channelImageUrl);
				videoObj.setCategoryType(categoryType);
				
				chzzkVideos2.add(videoObj);
				
				
				
			}
		}catch (JSONException e) {
			System.out.println("JSON 파싱 오류: " + e.getMessage());
			e.printStackTrace();
		}
		
		 chzzkVideos2.sort((v1, v2) -> Integer.compare(v2.getReadCount(), v1.getReadCount()));
		
		return chzzkVideos2;
	}
	

}
