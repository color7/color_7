package com.color.rear.user.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.color.common.dto.PlayDto;
import com.color.common.dto.PlayGroupDto;
import org.springframework.beans.factory.annotation.Autowired;

import com.color.common.action.ActionSupper;
import com.color.common.dto.HonorLimitDto;
import com.color.common.dto.UserDto;
import com.color.common.utils.GetRequestUtil;
import com.color.common.utils.RearPageUtil;
import com.color.rear.user.service.UserService;
import com.opensymphony.xwork2.ActionContext;

/**
 * @ClassName: AdminAction
 * @Description: (这里用一句话描述这个类的作用)
 * @author 林润树
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年11月7日   @callsure		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
public class AdminAction extends ActionSupper {
	
	private UserService userServiceF;
	
	private Map<String, Object> responseJson;
	
	/**
	 * @Title: gotoIndexPage
	 * @Description: (后台主页)
	 * @return
	 * @Author: 林润树
	 */
	public String gotoIndexPage(){
		return RearPageUtil.INDEX_PAGE;
	}
	
	/**
	 * @Title: setUp
	 * @Description: (返回设置页面)
	 * @return
	 * @Author: 林润树
	 */
	public String setUp(){
		UserDto userDto = GetRequestUtil.getLoginUserDto();
		ActionContext action = ActionContext.getContext();
		HonorLimitDto h = userServiceF.getHonorByUser(userDto.getUserId());
		List<PlayDto> li = userServiceF.getPlayData();
		List<PlayDto> lig = userServiceF.getPlayGroupData();
		action.put("user", h);
		action.put("lp",li);
		action.put("lpg",lig);
		return RearPageUtil.SETUP_PAGE;
	}
	
	/**
	 * @Title: userInfo
	 * @Description: (返回用户信息)
	 * @return
	 * @Author: 林润树
	 */
	public String userInfo(){
		Map<String, Object> map = new HashMap<String, Object>();
		UserDto userDto = GetRequestUtil.getLoginUserDto();
		HonorLimitDto h = userServiceF.getHonorByUser(userDto.getUserId());
		map.put("honor", h);
		setResponseJson(map);
		return "success";
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
