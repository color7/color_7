/**  
 * @Package： com.color.front.user.serviceImpl
 * @FileName: UserFrontServiceImpl.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月9日
 */
package com.color.front.user.serviceImpl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.color.common.dao.HonorLimitDao;
import com.color.common.dao.UserDao;
import com.color.common.dto.UserDto;
import com.color.common.utils.JsonBean;
import com.color.domain.HonorLimit;
import com.color.domain.User;
import com.color.front.user.service.UserFrontService;

/**
 * @ClassName: UserFrontServiceImpl
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
@Service("userFrontServiceF")
public class UserFrontServiceImpl implements UserFrontService {
	private UserDao userDao;
	
	private HonorLimitDao honorLimitDao;

	  public JsonBean userFrontLogin(UserDto userDto)
	  {
	    JsonBean jb = new JsonBean();
	    jb.setSuccess(false);
	    jb.setMsg("用户不存在或密码错误！");
	    User user = this.userDao.getUserAccount(userDto);
	    if (user != null) {
	      user = this.userDao.getUserLogin(userDto);
	      if (user != null) {
	        if (user.getUserLevel().equals("6")) {
	          jb.setSuccess(true);
	          String hql = "from HonorLimit hl where hl.user.userId = :userId";
	  	      Map<String,Object> params = new HashMap<String, Object>();
	  	      params.put("userId", user.getUserId());
	  	      HonorLimit honorLimit = honorLimitDao.get(hql, params);
	  	      userDto.setHonorLimitMax(honorLimit.getHonorLimitMax());
	  	      userDto.setResidueHonorLimit(honorLimit.getResidueHonorLimit());
	  	      userDto.setUsedHonorLimit(honorLimit.getUsedHonorLimit());
	          BeanUtils.copyProperties(user, userDto);
	          jb.setObj(userDto);
	        }
	        else {
	          jb.setMsg("该账户不是会员！");
	        }
	      }
	    }
	    return jb;
	  }

	  public UserDao getUserDao() {
	    return this.userDao;
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
	  
	  
}
