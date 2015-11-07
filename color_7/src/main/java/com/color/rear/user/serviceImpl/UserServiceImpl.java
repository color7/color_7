package com.color.rear.user.serviceImpl;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.color.common.dao.UserDao;
import com.color.common.dto.UserDto;
import com.color.common.utils.JsonBean;
import com.color.domain.User;
import com.color.rear.user.service.UserService;

/**
 * @ClassName: UserServiceImpl
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
@Service("userServiceF")
public class UserServiceImpl implements UserService {
	
	private Logger loger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	private UserDao userDao;

	@Override
	public JsonBean loginUser(UserDto userDto) {
		JsonBean jb = new JsonBean();
		jb.setSuccess(false);
		User user = userDao.getUserAccount(userDto);
		if(user != null){
			user = userDao.getUserLogin(userDto);
			if(user != null){
				jb.setSuccess(true);
				try {
					BeanUtils.copyProperties(userDto,user);
				} catch (IllegalAccessException | InvocationTargetException e) {
					e.printStackTrace();
				}
				jb.setObj(userDto);
			}
		}
		return jb;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}


}
