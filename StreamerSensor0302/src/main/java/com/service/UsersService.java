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

			/*
			 * System.out.println(writeContentBean.getContent_subject());
			 * System.out.println(writeContentBean.getContent_text());
			 * System.out.println(writeContentBean.getUpload_file().getSize());
			 */

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