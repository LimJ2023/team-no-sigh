package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.domain.Review;
import com.domain.StreamerRating;

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
	
	@Select("select s.streaming_id, s.streamer_id, s.streaming_description, s.streaming_time, c.categorys, s.streaming_date, "
			+ "s.streaming_image "
			+ "from streaming_info s "
			+ "INNER JOIN stream_categorys c ON s.stream_categorys_id = c.stream_categorys_id "
			+ "WHERE s.streaming_date = (SELECT MAX(s2.streaming_date) "
			+ "FROM streaming_info s2)")
	List<Review> getRecentReivew();
	
	@Insert("INSERT INTO streamer_rating (comment_id, user_idx, streamer_idx, streamer_rating, "
			+ "rating_comment, streamer_rating_date) "
			+ "VALUES(STREAMER_RATING_ID_SEQ.nextval , #{user_idx}, #{streamer_idx}, #{streamer_rating}, "
			+ "#{rating_comment}, sysdate)")
	void insertStreamerRating(StreamerRating rating);
	
	@Select("SELECT u.user_name, u.user_image, r.user_idx, r.streamer_idx, r.streamer_rating,r.rating_comment, r.streamer_rating_date "
			+ "FROM streamer_rating r "
			+ "INNER JOIN users u ON u.user_idx = r.user_idx "
			+ "WHERE streamer_idx = #{streamer_idx}")
	List<StreamerRating> getRatingListByStreamerIdx(int streamer_idx);
	
	@Select("SELECT COUNT(*) "
			+ "FROM streamer_rating "
			+ "WHERE streamer_idx = #{streamer_idx}")
	int getCommentCount(int streamer_idx);
}
