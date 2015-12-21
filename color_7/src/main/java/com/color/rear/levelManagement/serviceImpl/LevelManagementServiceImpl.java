/**  
 * @Package： com.color.rear.levelManagement.serviceImpl
 * @FileName: LevelManagementServiceImpl.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月19日
 */
package com.color.rear.levelManagement.serviceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.color.common.dao.HonorLimitDao;
import com.color.common.dao.UserDao;
import com.color.common.dao.UserRoleDao;
import com.color.common.dto.LevelManagementDto;
import com.color.common.dto.UserDto;
import com.color.common.utils.GetRequestUtil;
import com.color.domain.HonorLimit;
import com.color.domain.UserRole;
import com.color.rear.levelManagement.service.LevelManagementService;

/**
 * @ClassName: LevelManagementServiceImpl
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
@Service("levelManagementService")
public class LevelManagementServiceImpl implements LevelManagementService {
	private Logger loger = LoggerFactory.getLogger(LevelManagementServiceImpl.class);
	
	private UserDao userDao;
	
	private HonorLimitDao honorLimitDao;
	
	private UserRoleDao userRoleDao;
	
	@Override
	public List<LevelManagementDto> getLevelManagementList(Integer uid) {
		List<LevelManagementDto> list = new ArrayList<LevelManagementDto>();
		UserDto u = GetRequestUtil.getLoginUserDto();
		
		String hql = "from UserRole ur where ur.parentId = :parentId";
		Map<String,Object> params = new HashMap<String, Object>();
		if(uid == null) {
			params.put("parentId", u.getUserId());
		}else {
			params.put("parentId", uid);
		}
		List<UserRole> ls = userRoleDao.find(hql, params);
		if(ls != null && ls.size() > 0) {
			for(UserRole ur : ls) {
				LevelManagementDto lmd = new LevelManagementDto();
				BeanUtils.copyProperties(ur, lmd);
				if(ur.getUser() != null) {
					BeanUtils.copyProperties(ur.getUser(), lmd);
					String hql1 = "from HonorLimit hl where hl.user.userId = :userId";
				    Map<String,Object> map = new HashMap<String, Object>();
				    params.put("userId", ur.getUser().getUserId());
				    HonorLimit honorLimit = honorLimitDao.get(hql1, map);
				    BeanUtils.copyProperties(honorLimit, lmd);
				}
				if(ur.getRole() != null) {
					BeanUtils.copyProperties(ur.getRole(), lmd);
				}
				list.add(lmd);
			}
		}
		return list;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public HonorLimitDao getHonorLimitDao() {
		return honorLimitDao;
	}

	@Autowired
	public void setHonorLimitDao(HonorLimitDao honorLimitDao) {
		this.honorLimitDao = honorLimitDao;
	}

	public UserRoleDao getUserRoleDao() {
		return userRoleDao;
	}

	@Autowired
	public void setUserRoleDao(UserRoleDao userRoleDao) {
		this.userRoleDao = userRoleDao;
	}
	
}
