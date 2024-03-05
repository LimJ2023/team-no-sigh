package com.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.beans.UsersBean;
import com.domain.Users;

public class UsersValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return UsersBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Users usersBean = (Users)target;
		
		String beanName=errors.getObjectName();
		//System.out.println(beanName);
		
		//비밀번호 확인 또는 수정할 때
		if (beanName.equals("joinUserBean") || beanName.equals("modifyUserBean")) {
		if(usersBean.getUser_pw().equals(usersBean.getUser_pw2()) == false) {
			errors.rejectValue("user_pw", "NotEquals");
			errors.rejectValue("user_pw2", "NotEquals");
		}
		
		//사용자 아이디 중복 확인이 이루어지지 않은 경우 검사
		//회원가입 할 때
		if (beanName.equals("joinUserBean")) {
			
			//db에 있다=사용할 수 없는 아이디
			if(usersBean.isUserIdExist() ==  false) {
				errors.rejectValue("user_id", "DontCheckUserIdExist");
			}//중복확인 안 누르고 회원가입 하려고할때 에러 발생
		}
	}	
	}

}
