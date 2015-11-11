package com.color.common.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.color.common.dao.JuniorDao;
import com.color.common.dto.JuniorDto;
import com.color.domain.User;

/**
 * 下级管理dao
 * 
 * @author Zohar
 * 
 */
@Repository("juniorDao")
public class JuniorDaoImpl extends BaseDaoImpl<User> implements JuniorDao {

	@Override
	public List<JuniorDto> getAllJuniorByUserId(int userId) {
		
		

		return null;
	}

}
