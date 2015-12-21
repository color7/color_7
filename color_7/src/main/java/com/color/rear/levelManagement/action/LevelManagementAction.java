/**  
 * @Package： com.color.rear.levelManagement.action
 * @FileName: LevelManagementAction.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月19日
 */
package com.color.rear.levelManagement.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.color.common.action.ActionSupper;
import com.color.common.dto.LevelManagementDto;
import com.color.common.dto.UserDto;
import com.color.common.utils.GetRequestUtil;
import com.color.common.utils.RearPageUtil;
import com.color.rear.levelManagement.service.LevelManagementService;
import com.opensymphony.xwork2.ActionContext;

/**
 * @ClassName: LevelManagementAction
 * @Description: (这里用一句话描述这个类的作用)
 * @author linrunshu
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年12月19日     linrunshu		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
public class LevelManagementAction extends ActionSupper {
	
	private LevelManagementService levelManagementService;
	
	private Integer uid;
	
	public String levelManagementPage() {
		UserDto u = GetRequestUtil.getLoginUserDto();
		ActionContext action  = ActionContext.getContext();
		List<LevelManagementDto> list = levelManagementService.getLevelManagementList(uid);
		action.put("lists", list);
		return RearPageUtil.LEVELMANAGEMENT_PAGE;
	}

	public LevelManagementService getLevelManagementService() {
		return levelManagementService;
	}

	@Autowired
	public void setLevelManagementService(
			LevelManagementService levelManagementService) {
		this.levelManagementService = levelManagementService;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	

}
