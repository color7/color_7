/**  
 * @Package： com.color.front.user.action
 * @FileName: LoginAction.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月9日
 */
package com.color.front.user.action;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.color.common.action.ActionSupper;
import com.color.common.dto.UserDto;
import com.color.common.utils.FrontPageUtil;
import com.color.common.utils.GetRequestUtil;
import com.color.common.utils.JsonBean;
import com.color.front.twoNumber.service.TwoNumberService;
import com.color.front.user.service.UserFrontService;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @ClassName: LoginAction
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
public class LoginAction extends ActionSupper implements ModelDriven<UserDto> {
	private Map<String, Object> responseJson;
	  private UserDto userDto;
	  private UserFrontService userFrontServiceF;
	  private static TwoNumberService twoNumberFrontServiceF;

	  public String loginFrontPage()
	  {
	    return FrontPageUtil.LOGIN_FRONT_PAGE;
	  }

	  public String userFrontLogin() {
		  //test();
	    Map map = new HashMap();
	    JsonBean jb = this.userFrontServiceF.userFrontLogin(this.userDto);
	    if (jb.isSuccess())
	    {
	      GetRequestUtil.setLoginUserDto((UserDto)jb.getObj());
	      map.put("returnJson", "{status:0,msg:\"" + jb.getMsg() + "\"}");
	    } else {
	      map.put("returnJson", "{status:1,msg:\"" + jb.getMsg() + "\"}");
	    }
	    setResponseJson(map);
	    return "success";
	  }
	  
	  public UserDto getModel()
	  {
	    if (this.userDto == null) {
	      this.userDto = new UserDto();
	    }
	    return this.userDto;
	  }

	  public Map<String, Object> getResponseJson() {
	    return this.responseJson;
	  }

	  public void setResponseJson(Map<String, Object> responseJson) {
	    this.responseJson = responseJson;
	  }

	  public UserDto getUserDto() {
	    return this.userDto;
	  }

	  public void setUserDto(UserDto userDto) {
	    this.userDto = userDto;
	  }

	  public UserFrontService getUserFrontServiceF() {
	    return this.userFrontServiceF;
	  }

	  @Autowired
	  public void setUserFrontServiceF(UserFrontService userFrontServiceF) {
	    this.userFrontServiceF = userFrontServiceF;
	  }

	  public TwoNumberService getTwoNumberFrontServiceF() {
	    return twoNumberFrontServiceF;
	  }

	  @Autowired
	  public void setTwoNumberFrontServiceF(TwoNumberService twoNumberFrontServiceF) {
	    twoNumberFrontServiceF = twoNumberFrontServiceF;
	  }
}
