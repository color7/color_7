package com.color.common.dao;

import com.color.domain.HonorLimit;

/**
 * 信用额度dao
 * 
 * @author Zohar
 * 
 */
public interface HonorLimitDao extends BaseDao<HonorLimit> {
	/**
	 * 根据id获取信用额度实体
	 * 
	 * @param userId
	 * @return
	 */
	public HonorLimit getHonorLimitById(int honorLimitId);

}
