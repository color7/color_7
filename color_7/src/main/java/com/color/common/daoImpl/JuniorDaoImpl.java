package com.color.common.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.color.common.dao.JuniorDao;
import com.color.common.dto.JuniorDto;
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
	public List<User> getAllJuniorByUserId(int userId) {

		Query query = this
				.getCurrentSession()
				.createQuery(
						"select t1.codeName,t2.codeName from com.color.domain.User as t1 left join com.color.domain.User as t2 where t1.updateBy=t2.userId");
		List list = query.list();
		System.out.println(list.get(0));
		// List<User> users =
		// this.find("select t1.codeName,t2.codeName from User as t1 left join fetch User t2 where t1.updateBy=t2.userId");

		return null;
	}

}
