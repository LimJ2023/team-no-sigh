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
import org.springframework.stereotype.Service;

import com.dao.MainDAO;
import com.domain.Carousel_Test;
import com.domain.Streamer;
import com.domain.Video;

@Service
public class MainService {

	//0306 이지수
	@Autowired
	MainDAO mainDAO;
	
	/*public List<Carousel_Test> getTest(){
		return mainDAO.getTest();
	}*/
	
	public List<Streamer> getFiveStreamer(){
		return mainDAO.getFiveStreamer();
	}
	
	public List<Streamer> getRandomSugg(int user_idx){
		return mainDAO.getRandomSugg(user_idx);
	}
	/*
	public List<Streamer> getRandomSugg(){
		return mainDAO.getRandomSugg();
	}*/
	
public List<Streamer> getStreamerInfo(){
		
		
		String apiKey = "AIzaSyCwFnwxzyfa7m1MI5huBVUBuAnUzKKyUQ8";
		
		String urlStr = "https://youtube.googleapis.com/youtube/v3/channels"
				+ "?part=snippet%2Cstatistics"
				+ "&id=UCUCnZBCJhbllGTfqomgFKMg"
				+ "&maxResults=1"
				+ "&key="
				+ apiKey;
		
		StringBuilder sb = new StringBuilder();
		
		try {
			URL u = new URL(urlStr);
			URLConnection conn = u.openConnection();
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line;
			while((line = br.readLine()) != null) {
				sb.append(line + "\n");
			}
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//System.out.println(sb.toString());
		
		List<Streamer> streamerInfo = new ArrayList<>();
		JSONObject jsonObj = new JSONObject(sb.toString());
		JSONArray items = jsonObj.getJSONArray("items");
		
		for(int i = 0; i < items.length(); i++) {
			JSONObject item = items.getJSONObject(i);
			JSONObject statistics = item.getJSONObject("statistics");
			long video_count = statistics.getLong("videoCount");
			long subscriber_count = statistics.getLong("subscriberCount");
			

			Streamer streamer = new Streamer();
			
			String title = item.getJSONObject("snippet").getString("title");
			
			String thumbUrl = item.getJSONObject("snippet").getJSONObject("thumbnails").getJSONObject("high").getString("url");
			String channel_id = item.getJSONObject("snippet").getString("customUrl");
			
			streamer.setChannel_title(title);
			streamer.setChannel_video_count(video_count);
			streamer.setChannel_subscriber_count(subscriber_count);
			streamer.setThumbnail_url(thumbUrl);
			streamer.setChannel_id(channel_id);
			
			streamerInfo.add(streamer);
		}
		
		return streamerInfo;
		
	}


public List<Streamer> randomStreamerInfo(){
	String apiKey = "AIzaSyCuuvr7_KRchH9Mn8atB_S_V_ea2QlMBhM";
	
	String urlStr = "https://youtube.googleapis.com/youtube/v3/"
			+ "videos?part=snippet%2CcontentDetails%2Cstatistics&chart=mostPopular"
			+ "&maxResults=12&"
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
		System.out.println("IO 예외: " + e.getMessage());
		e.printStackTrace();
	}
	
	System.out.println("API 응답: " + sb.toString());
	
	List<Streamer> randomStreamer = new ArrayList<>();
	JSONObject jsonObj = new JSONObject(sb.toString());
	JSONArray items = jsonObj.getJSONArray("items");
	
	for(int i=0; i < items.length(); i++) {
		JSONObject item = items.getJSONObject(i);
		String channelId = item.getJSONObject("snippet").getString("channelId");
		String channelTitle = item.getJSONObject("snippet").getString("channelTitle");
		
		Streamer streamer= new Streamer();
		streamer.setChannel_id(channelId);
		streamer.setChannel_title(channelTitle);
		
		
		String urlStr2 = "https://youtube.googleapis.com/youtube/v3/channels"
				+ "?part=snippet%2CcontentDetails%2Cstatistics"
				+ "&id="
				+ channelId
				+ "&maxResults=10"
				+ "&key="
				+ apiKey;
		
		StringBuilder sbChannel = new StringBuilder();
		try {
			URL u2 = new URL(urlStr2);
			URLConnection conn2 = u2.openConnection();
			
			BufferedReader br2 = new BufferedReader(new InputStreamReader(conn2.getInputStream()));
			String line2;
			
			while((line2 = br2.readLine()) != null) {
				sbChannel.append(line2 + "\n");
			}
		
		
		JSONObject jsonObjChannel = new JSONObject(sbChannel.toString());
		JSONArray itemsChannel = jsonObjChannel.getJSONArray("items");
		
		if(itemsChannel.length() > 0) {
			JSONObject itemChannel = itemsChannel.getJSONObject(0);
			JSONObject statistics = itemChannel.getJSONObject("statistics");
			long videoCount = statistics.optLong("videoCount", 0);
			long subscriberCount = statistics.optLong("subscriberCount", 0);
			
			String thumbUrl = itemChannel.getJSONObject("snippet").getJSONObject("thumbnails").getJSONObject("high").getString("url");
			String customUrl = itemChannel.getJSONObject("snippet").getString("customUrl");
			
			streamer.setChannel_video_count(videoCount);
			streamer.setChannel_subscriber_count(subscriberCount);
			streamer.setThumbnail_url(thumbUrl);
			streamer.setCustomUrl(customUrl);
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		String urlStr3 = "https://youtube.googleapis.com/youtube/v3/playlists"
				+ "?part=snippet%2CcontentDetails"
				+ "&channelId="
				+ channelId
				+ "&maxResults=3"
				+ "&key="
				+ apiKey;
		
		StringBuilder sbPlayList = new StringBuilder();
		
		try {
			URL u3 = new URL(urlStr3);
			URLConnection conn3 = u3.openConnection();
			
			BufferedReader br3 = new BufferedReader(new InputStreamReader(conn3.getInputStream()));
			String line3;
			
			while((line3 = br3.readLine()) != null) {
				sbPlayList.append(line3 + "\n");
			}
			JSONObject jsonObjChannel2 = new JSONObject(sbPlayList.toString());
			JSONArray itemsChannel2 = jsonObjChannel2.getJSONArray("items");
			if(itemsChannel2.length() > 0) {
				JSONObject itemChannel2 = itemsChannel2.getJSONObject(0);
				//JSONObject statistics2 = itemChannel2.getJSONObject("statistics");
				
				String title2 = itemChannel2.getJSONObject("snippet").getString("title");
				
				//String thumbUrl = itemChannel.getJSONObject("snippet").getJSONObject("thumbnails").getJSONObject("high").getString("url");
				//String customUrl = itemChannel.getJSONObject("snippet").getString("customUrl");
				
				streamer.setTitle(title2);
				String videoThumbUrl = itemChannel2.getJSONObject("snippet").getJSONObject("thumbnails").getJSONObject("high").getString("url");
				streamer.setVideoThumbUrl(videoThumbUrl);
				String videoId = itemChannel2.getString("id");
				streamer.setVideoId(videoId);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		
		
		randomStreamer.add(streamer);
		
		
	}//for

	return randomStreamer;
}

public List<Video> chzzkTest2(){
	String chzzkUrl = "https://api.chzzk.naver.com/service/v1/"
			+ "search/videos?"
			+ "keyword=game"
			+ "&offset=0"
			+ "&size=9"; //50 가능
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
			String thumbnailImageUrl = video.optString("thumbnailImageUrl", "img/2nd_Person.png");
			
			
			JSONObject channel = dataObj.getJSONObject("channel");
			String channelName = channel.getString("channelName");
			String channelId = channel.getString("channelId");
			String channelImageUrl = channel.getString("channelImageUrl");
			
			Video videoObj = new Video();
			
			
			videoObj.setVideo_title(videoTitle);
			//video.setThumbnail_url(liveImageUrl);
			
			videoObj.setReadCount(readCount);
			videoObj.setChannelName(channelName);
			videoObj.setChannelId(channelId);
			videoObj.setThumbnail_url(thumbnailImageUrl);
			videoObj.setChannelImageUrl(channelImageUrl);
			String categoryType = video.optString("categoryType", "");
			
			chzzkVideos2.add(videoObj);
			
			
			
		}
	}catch (JSONException e) {
		System.out.println("JSON 파싱 오류: " + e.getMessage());
		e.printStackTrace();
	}
	
	 chzzkVideos2.sort((v1, v2) -> Integer.compare(v2.getReadCount(), v1.getReadCount()));
	
	 System.out.println("size: "+chzzkVideos2.size() );
	return chzzkVideos2;
}

/*
public List<Streamer> totalRandom(){
	String apiKey = "AIzaSyCuuvr7_KRchH9Mn8atB_S_V_ea2QlMBhM";
	
	String urlStr = "https://youtube.googleapis.com/youtube/v3/"
			+ "videos?part=snippet%2CcontentDetails%2Cstatistics&chart=chartUnspecified"
			+ "&maxResults=20&"
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
		System.out.println("IO 예외: " + e.getMessage());
		e.printStackTrace();
	}
	
	System.out.println("API 응답: " + sb.toString());
	
	List<Streamer> totalRandomStreamer = new ArrayList<>();
	JSONObject jsonObj = new JSONObject(sb.toString());
	JSONArray items = jsonObj.getJSONArray("items");
	
	for(int i=0; i < items.length(); i++) {
		JSONObject item = items.getJSONObject(i);
		String channelId = item.getJSONObject("snippet").getString("channelId");
		String channelTitle = item.getJSONObject("snippet").getString("channelTitle");
		
		Streamer streamer= new Streamer();
		streamer.setChannel_id(channelId);
		streamer.setChannel_title(channelTitle);
		
		
		String urlStr2 = "https://youtube.googleapis.com/youtube/v3/channels"
				+ "?part=snippet%2CcontentDetails%2Cstatistics"
				+ "&id="
				+ channelId
				+ "&maxResults=5"
				+ "&key="
				+ apiKey;
		
		StringBuilder sbChannel = new StringBuilder();
		try {
			URL u2 = new URL(urlStr2);
			URLConnection conn2 = u2.openConnection();
			
			BufferedReader br2 = new BufferedReader(new InputStreamReader(conn2.getInputStream()));
			String line2;
			
			while((line2 = br2.readLine()) != null) {
				sbChannel.append(line2 + "\n");
			}
		
		
		JSONObject jsonObjChannel = new JSONObject(sbChannel.toString());
		JSONArray itemsChannel = jsonObjChannel.getJSONArray("items");
		
		if(itemsChannel.length() > 0) {
			JSONObject itemChannel = itemsChannel.getJSONObject(0);
			JSONObject statistics = itemChannel.getJSONObject("statistics");
			long videoCount = statistics.optLong("videoCount", 0);
			long subscriberCount = statistics.optLong("subscriberCount", 0);
			
			String thumbUrl = itemChannel.getJSONObject("snippet").getJSONObject("thumbnails").getJSONObject("high").getString("url");
			String customUrl = itemChannel.getJSONObject("snippet").getString("customUrl");
			
			streamer.setChannel_video_count(videoCount);
			streamer.setChannel_subscriber_count(subscriberCount);
			streamer.setThumbnail_url(thumbUrl);
			streamer.setCustomUrl(customUrl);
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		totalRandomStreamer.add(streamer);
		
		
	}

	return totalRandomStreamer;
}*/

}
