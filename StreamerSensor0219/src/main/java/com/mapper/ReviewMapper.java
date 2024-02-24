package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.domain.Review;

public interface ReviewMapper {

	@Select("select u.user_id, s.strm_id, i.streaming_desc, "
			+ "r.writing_data, r.review_rating, r.review_creation_date, m.img_url "
			+ "from REVIEW r "
			+ "inner join STREAMING_INFO i on r.review_streaming_id = i.streaming_id "
			+ "inner join users u on u.user_id = r.user_id "
			+ "inner join streamer s  on s.strm_id = i.strm_id "
			+ "inner join streaming_img m on i.img_id = m.img_id "
			+ "order by r.review_creation_date desc, i.streaming_id")
	List<Review> getAllReviews();
}
