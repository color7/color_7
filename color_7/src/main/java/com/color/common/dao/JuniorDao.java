package com.color.common.dao;

import java.util.List;

import com.color.domain.User;

/**
 * 下级管理dao
 * 
 * @author Zohar
 * 
 */
public interface JuniorDao extends BaseDao<User> {
	/**
	 * 获取当前用户的全部下级用户
	 * 
	 * @param userId
	 * @return
	 */
	public List<User> getAllById(int userId);

	/**
	 * 根据id获取用户实体
	 * 
	 * @param userId
	 * @return
	 */
	public User getUserById(int userId);

	/**
	 * 新增下级
	 * 
	 * @param user
	 */
	public void addJunior(User user);

}
