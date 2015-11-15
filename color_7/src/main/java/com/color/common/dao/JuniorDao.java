package com.color.common.dao;

import java.util.List;

import com.color.common.dto.JuniorDto;
import com.color.domain.User;

/**
 * 下级管理dao
 * 
 * @author Zohar
 * 
 */
public interface JuniorDao extends BaseDao<User> {
	/**
	 * 获取当前用户的直属下级用户的基本信息
	 * @param userId
	 * @return
	 */
	public List<User> getAllJuniorByUserId(int userId);

}
