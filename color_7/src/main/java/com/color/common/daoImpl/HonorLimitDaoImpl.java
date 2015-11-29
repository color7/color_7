package com.color.common.daoImpl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.color.common.dao.HonorLimitDao;
import com.color.domain.HonorLimit;

//这里为了方便,全部方法都加事务,实际环境不能这样做
@Transactional
@Repository("honorLimitDao")
public class HonorLimitDaoImpl extends BaseDaoImpl<HonorLimit> implements
		HonorLimitDao {

	@Override
	public HonorLimit getHonorLimitById(int honorLimitId) {
		return this.get(HonorLimit.class, honorLimitId);
	}

}
