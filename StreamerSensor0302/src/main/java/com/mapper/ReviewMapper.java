package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.domain.Review;

public interface ReviewMapper {

	@Select("select u.user_id, s.streamer_id, i.streaming_description, "
			+ "r.writing_data, r.review_rating, r.review_creation_date, m.img_url "
			+ "from review r "
			+ "inner join streaming_info i on r.review_streaming_id = i.streaming_id "
			+ "inner join users u on u.user_id = r.user_id "
			+ "inner join streamer s  on s.streamer_id = i.streamer_id "
			+ "inner join streaming_img m on i.img_id = m.img_id "
			+ "order by r.review_creation_date desc")
	List<Review> getAllReviews();
	
	@Select("select s.streaming_id, s.streamer_id, s.streaming_description, s.streaming_time, "
			+ "c.categorys, s.streaming_date, "
			+ "i.img_url "
			+ "from streaming_info s "
			+ "inner join streaming_img i on s.img_id = i.img_id "
			+ "INNER JOIN stream_categorys c ON s.stream_categorys_id = c.stream_categorys_id "
			+ "WHERE s.streaming_date = (SELECT MAX(s2.streaming_date) "
			+ "    FROM streaming_info s2)")
	List<Review> getRecentReivew();
	
}
