package com.color.common.daoImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.color.common.dao.MakeWaterDao;
import com.color.domain.MakeWater;

//这里为了方便,全部方法都加事务,实际环境不能这样做
@Transactional
@Repository("makeWaterDao")
public class MakeWaterDaoImpl extends BaseDaoImpl<MakeWater> implements
		MakeWaterDao {

	@Override
	public List<MakeWater> getAllByUserId(int userId) {
		String hql = "from MakeWater m1 where m1.user.userId=:userId";
		Map<String, Object> params = new HashMap<>();
		params.put("userId", userId);
		List<MakeWater> list = this.find(hql, params);
		return list;
	}

}
