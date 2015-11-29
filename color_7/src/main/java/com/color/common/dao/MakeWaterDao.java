package com.color.common.dao;

import java.util.List;

import com.color.domain.MakeWater;

/**
 * 赚水dao
 * 
 * @author Zohar
 * 
 */
public interface MakeWaterDao extends BaseDao<MakeWater> {
	/**
	 * 根据userId获取全部赚水
	 * 
	 * @param userId
	 * @return
	 */
	public List<MakeWater> getAllByUserId(int userId);

}
