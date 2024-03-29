package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.domain.Board;
import com.domain.Preperences;
//import com.beans.UsersBean;
import com.domain.Users;

public interface UsersMapper {

	@Select("SELECT * " + "FROM users " + "WHERE user_idx = #{user_idx}")
	Users getUserByNumber(int user_idx);

	@Select("select * from users")
	List<Users> getAllUsers();

	@Select("select user_idx, user_id, user_name, user_gender, user_age, user_nation, subscription, user_image "
			+ "FROM users " + "WHERE user_idx = #{user_idx}")
	Users printOneUser(int user_idx);

	@Select("select user_idx, user_pw, user_id, user_name, user_gender, user_age, user_nation, subscription, user_image "
			+ "FROM users " + "WHERE user_idx = #{user_idx}")
	Users printOneUsers(int user_idx);
	
	@Select("SELECT user_name " + "FROM users " + "WHERE user_id = #{user_id}")
	String checkUserIdExist(String user_id);
		//사용자의 이름을 반환하는 쿼리문
	
	@Insert("insert into users (user_idx, user_id, user_pw, user_name, user_gender, user_age, user_nation) " +
			"VALUES (users_seq.nextval, #{user_id}, #{user_pw, jdbcType=VARCHAR}, #{user_name}, #{user_gender}, #{user_age}, #{user_nation})")
	void addUserInfo(Users joinUserBean);
	
	//0304 이지수 subscription 추가
	@Select("select user_idx, user_name, subscription "
			+ "from users "
			+ "where user_id=#{user_id} and user_pw=#{user_pw}")
	Users getLoginUserInfo(Users tempLoginUserBean);

	@Select("select user_id, user_name, user_gender, user_age, user_nation " + "from users " + "where user_idx = #{user_idx}")
	Users getmodifyUserinfo(int user_idx);

	@Update("update users " +
			"set user_pw = #{user_pw}, user_gender = #{user_gender}, "
			+ "user_age = #{user_age}, user_nation = #{user_nation} "
			+ "where user_idx = #{user_idx}")
	void modifyUserInfo(Users modifyUserBean);
	
	@Update("update users "
			+ "set subscription = #{subscription} "
			+ "where user_idx = #{user_idx}")
	void updateUserSub(@Param("subscription") String subscription, @Param("user_idx")int user_idx);
	
	@Delete("DELETE FROM users WHERE user_idx = #{user_idx}")
	void deleteInfo(int user_idx);
	//=======================================================================================
	@Update("update users "
			+ "set user_name = #{user_name}, user_gender = #{user_gender}, "
			+ "user_age = #{user_age}, user_nation = #{user_nation}, "
			+ "subscription = #{subscription}, user_image = #{user_image, jdbcType=VARCHAR} "
			+ "where user_idx = #{user_idx} ")
	void modifyMemberInfo(Users modifyMemberBean);

	@Delete("DELETE FROM users WHERE user_idx = #{user_idx}")
	void deleteMemberInfo(int user_idx);
	
	@Select("select b.board_idx, u.user_id, b.title, b.info, b.board_date "
			+ "from users u "
			+ "INNER JOIN board b on u.user_id = b.user_id "
			+ "where u.user_id = #{user_id}")
	List<Board> selectBoardInfo(String user_id);
	//-------------------------------------------------------------------------------
	@Select("SELECT * "
			+ "FROM users "
			+ "ORDER BY user_idx desc")
	List<Users> getNewJoinUsers();
	
	//0312 이지수
	@Insert("INSERT INTO preferences VALUES(preferences_id_seq.nextval, "
			+"#{user_id}, '감스트', null, 1, 1)")
	void addUserPreference(String userId);
	//---------------------------------------------------------------------------------
	@Update("update site_stat "
			+ "set day_revenue = #{day_revenue} "
			+ "where stat_id = #{stat_id}")
	void amonuntInfo(int stat_id);
}
