package com.color.common.daoImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.color.common.dao.JuniorDao;
import com.color.domain.User;

/**
 * 下级管理dao
 * 
 * @author Zohar
 * 
 */
// 这里为了方便,全部方法都加事务,实际环境不能这样做
@Transactional
@Repository("juniorDao")
public class JuniorDaoImpl extends BaseDaoImpl<User> implements JuniorDao {

	@Override
	public List<User> getAllById(int userId) {
		String hql = "from User u1 where u1.parent.userId=:userId";
		Map<String, Object> params = new HashMap<>();
		params.put("userId", userId);
		List<User> list = this.find(hql, params);
		return list;
	}

	@Override
	public User getUserById(int userId) {
		return this.get(User.class, userId);
	}

	@Override
	public void addJunior(User user) {
		this.save(user);
	}

}
