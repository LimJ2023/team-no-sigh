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
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import com.domain.Streamer;

@Service
public class MainService {

public List<Streamer> getStreamerInfo(){
		
		
		String apiKey = "AIzaSyCNUTsRVT4N2-lGyPxsWtzq97yIfPIi4zA";
		
		String urlStr = "https://youtube.googleapis.com/youtube/v3/channels"
				+ "?part=snippet%2Cstatistics"
				+ "&id=UCUCnZBCJhbllGTfqomgFKMg"
				+ "&maxResults=3"
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
		
		System.out.println(sb.toString());
		
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
			
			streamer.setChannel_title(title);
			 
			streamer.setChannel_video_count(video_count);
			streamer.setChannel_subscriber_count(subscriber_count);
			
			
			streamerInfo.add(streamer);
		}
		
		return streamerInfo;
		
	}

}
