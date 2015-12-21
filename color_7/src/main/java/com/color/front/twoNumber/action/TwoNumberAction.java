/**  
 * @Package： com.color.front.twoNumber.action
 * @FileName: TwoNumberAction.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月9日
 */
package com.color.front.twoNumber.action;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.color.common.action.ActionSupper;
import com.color.common.dto.HonorLimitDto;
import com.color.common.dto.TwoNumberDto;
import com.color.common.dto.UserDto;
import com.color.common.utils.FrontPageUtil;
import com.color.common.utils.GetRequestUtil;
import com.color.common.utils.JsonBean;
import com.color.front.twoNumber.service.TwoNumberService;
import com.color.rear.user.service.UserService;
import com.opensymphony.xwork2.ActionContext;

/**
 * @ClassName: TwoNumberAction
 * @Description: (这里用一句话描述这个类的作用)
 * @author linrunshu
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年12月9日     linrunshu		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
@Controller
public class TwoNumberAction extends ActionSupper {
	
	private TwoNumberService twoNumberFrontService;
	
	private UserService userServiceF;
	
	private Integer numId;
	
	private Map<String, Object> responseJson;
	
	public String TwoNumberList(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<TwoNumberDto> list = twoNumberFrontService.getTwoNumberList(numId);
		map.put("list", list);
		setResponseJson(map);
		return "success";
	}
	
	public String saveOrUpdateTwoNumber(){
		String nums = request.getParameter("post_number_money");
		int play = Integer.parseInt(request.getParameter("play"));
		int playgroup = Integer.parseInt(request.getParameter("playgroup"));
		String betpath = request.getParameter("betpath");
		BigDecimal money =  new BigDecimal(request.getParameter("post_money"));
		JsonBean jb = new JsonBean();
		jb = twoNumberFrontService.saveOrUpdateTwoNumber(nums, play, playgroup, betpath, money);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("jb", jb);
		setResponseJson(map);
		return "success";
	}
	
	public String twoNumberView(){
		UserDto userDto = GetRequestUtil.getLoginUserDto();
		ActionContext action = ActionContext.getContext();
		HonorLimitDto h = userServiceF.getHonorByUser(userDto.getUserId());
		action.put("uh", h);
		return FrontPageUtil.TWONUMBER_PAGE;
	}
		

	public TwoNumberService getTwoNumberFrontService() {
		return twoNumberFrontService;
	}

	public void setTwoNumberFrontService(TwoNumberService twoNumberFrontService) {
		this.twoNumberFrontService = twoNumberFrontService;
	}

	public Integer getNumId() {
		return numId;
	}

	public void setNumId(Integer numId) {
		this.numId = numId;
	}

	public Map<String, Object> getResponseJson() {
		return responseJson;
	}

	public void setResponseJson(Map<String, Object> responseJson) {
		this.responseJson = responseJson;
	}

	public UserService getUserServiceF() {
		return userServiceF;
	}

	@Autowired
	public void setUserServiceF(UserService userServiceF) {
		this.userServiceF = userServiceF;
	}
	
}
