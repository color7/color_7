package com.color.common.utils;

import java.util.Map;

import com.color.common.dto.UserDto;
import com.opensymphony.xwork2.ActionContext;

/**
 * 获取用户登录信息工具
 */
public class GetRequestUtil {
	
	
	/**
	 * 将已登录的后台用户信息存进session中
	 */
	public static void setLoginUserDto(UserDto userDto){
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put(CommonUtil.LOGIN_ADMIN, userDto);
	}
	
	/**
	 * 将session中的用户信息取出来
	 */
	public static UserDto getLoginUserDto(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		return (UserDto) session.get(CommonUtil.LOGIN_ADMIN);
	}
}

