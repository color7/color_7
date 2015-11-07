package com.color.rear.user.action;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.color.common.action.ActionSupper;
import com.color.common.dto.UserDto;
import com.color.common.utils.GetRequestUtil;
import com.color.common.utils.JsonBean;
import com.color.common.utils.RearPageUtil;
import com.color.rear.user.service.UserService;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @ClassName: LoginAction
 * @Description: (这里用一句话描述这个类的作用)
 * @author 林润树
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年11月4日   @callsure		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
@Controller
public class LoginAction extends ActionSupper implements ModelDriven<UserDto>{
	
	// Ajax返回json的数据
	private Map<String, Object> responseJson;
	
	private UserDto userDto;
	
	private UserService userServiceF;
	
	/**
	 * 打开后台登录界面
	 * 
	 * @return
	 */
	public String loginPage() {
		return RearPageUtil.LOGIN_PAGE;
	}
	
	/**
	 * @Title: userLogin
	 * @Description: (后台登录)
	 * @return
	 * @Author: 林润树
	 */
	public String userLogin(){
		Map<String, Object> map = new HashMap<String, Object>();
		JsonBean jb = userServiceF.loginUser(userDto);
		if(jb.isSuccess()){
			//登录成功
			GetRequestUtil.setLoginUserDto((UserDto) jb.getObj());
			map.put("returnJson", "{status:0,hash_code:false}");
		}else{
			map.put("returnJson", "{status:1,hash_code:false}");
		}
		setResponseJson(map);
		return "success";
	}

	@Override
	public UserDto getModel() {
		if(userDto == null){
			userDto = new UserDto();
		}
		return userDto;
	}

	public UserDto getUserDto() {
		return userDto;
	}

	public void setUserDto(UserDto userDto) {
		this.userDto = userDto;
	}

	public UserService getUserServiceF() {
		return userServiceF;
	}

	@Autowired
	public void setUserServiceF(UserService userServiceF) {
		this.userServiceF = userServiceF;
	}

	public Map<String, Object> getResponseJson() {
		return responseJson;
	}

	public void setResponseJson(Map<String, Object> responseJson) {
		this.responseJson = responseJson;
	}

}
