package com.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.beans.UsersBean;
import com.dao.UsersDAO;
import com.domain.Users;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class UsersService {

	@Value("${path.upload}")
	private String path_upload;

	@Autowired
	UsersDAO uDAO;

	@Resource(name = "loginUserBean")
	private UsersBean loginUserBean;
	
	@Resource(name = "selectUserImage")
	private Users selectUserImage;

	public Users getUsers() {
		Users usersBean = new Users();
		usersBean = uDAO.getUserByNumber(2);
		return usersBean;
	}

	public List<Users> getAllUsers() {
		return uDAO.getAllUsers();
	}

	public Users printOneUser(int user_idx) {
		return uDAO.printOneUser(user_idx);
	}

	public List<Users> getSubUsers() {

		List<Users> list = uDAO.getAllUsers();
		List<Users> result = new ArrayList<Users>();

		for (Users user : list) {
			if (user.getSubscription() != null && user.getSubscription().equals("y")) {
				result.add(user);
			}
		}

		return result;

	}

	public boolean checkuserIdExist(String user_id) {

		String user_name = uDAO.checkUserIdExist(user_id);

		if (user_name == null) {
			return true; // db에 없다=사용 가능한 아이디
		} // 없으니까 트루 ( 쓸 수 있는지 없는지를 확인하는 거니까, 중복 없음 = 사용가능 = true)
		else {
			return false; // db에 있다=사용할 수 없는 아이디
		}
	}

	public void addUserInfo(UsersBean joinUserBean) {
		uDAO.addUserInfo(joinUserBean);
	}

	public void getLoginUserInfo(UsersBean tempLoginUserBean) {
		UsersBean tempLoginUserBean2 = uDAO.getLoginUserInfo(tempLoginUserBean);
		if (tempLoginUserBean2 != null) {
			loginUserBean.setUser_idx(tempLoginUserBean2.getUser_idx());
			loginUserBean.setUser_name(tempLoginUserBean2.getUser_name());
			loginUserBean.setSubscription(tempLoginUserBean2.getSubscription()); //0304 이지수 추가
			loginUserBean.setUserLogin(true);
		}
	}

	public void getmodifyUserinfo(UsersBean modifyUserBean) {
		UsersBean tempModifyUserBean = uDAO.getmodifyUserinfo(loginUserBean.getUser_idx());

		modifyUserBean.setUser_id(tempModifyUserBean.getUser_id());
		modifyUserBean.setUser_name(tempModifyUserBean.getUser_name());
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
	}
	
	public void modifyUserInfo(UsersBean modifyUserBean) {
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
		uDAO.modifyUserInfo(modifyUserBean);
	}

	public void modifyMemberInfo(Users modifyMemberBean) {
		modifyMemberBean.setUser_idx(selectUserImage.getUser_idx());
		uDAO.modifyMemberInfo(modifyMemberBean);
	}

	// ============================================================================================

	public void deleteMemberInfo(int user_idx) {
		uDAO.deleteMemberInfo(user_idx);
	}
	
	// 저장하는 메소드
		private String saveUploadFile(MultipartFile upload_file) {

			// String file_name = System.currentTimeMillis() + "_" +
			// upload_file.getOriginalFilename();

			// 경로 시스템 오류시
			String file_name = System.currentTimeMillis() + "_"
					+ FilenameUtils.getBaseName(upload_file.getOriginalFilename()) + "."
					+ FilenameUtils.getExtension(upload_file.getOriginalFilename());

			try {
				upload_file.transferTo(new File(path_upload + "/" + file_name));
			} catch (Exception e) {
				e.printStackTrace();
			}

			return file_name;
		}

		public void addContentInfo(Users modifyMemberBean) {

			MultipartFile upload_file = modifyMemberBean.getUpload_file();

			if (upload_file.getSize() > 0) {
				String user_image = saveUploadFile(upload_file);
				// System.out.println(file_name);
				// 첨부파일 호출
				modifyMemberBean.setUser_image(user_image);
			}
			modifyMemberBean.setUser_idx(selectUserImage.getUser_idx());
			uDAO.modifyMemberInfo(modifyMemberBean);
		}

}