package com.color.common.dto;

import com.color.domain.HonorLimit;
import com.color.domain.User;

public class HonorLimitDto {
	/**
	 * 信用额度Id
	 */
	private Integer honorLimitId;
	/**
	 * 总信用额度
	 */
	private Integer honorLimitMax;
	/**
	 * 可分配信用额度
	 */
	private Integer residueHonorLimit;
	/**
	 * 已分配信用额度
	 */
	private Integer usedHonorLimit;

	public Integer getHonorLimitId() {
		return honorLimitId;
	}

	public void setHonorLimitId(Integer honorLimitId) {
		this.honorLimitId = honorLimitId;
	}

	public Integer getHonorLimitMax() {
		return honorLimitMax;
	}

	public void setHonorLimitMax(Integer honorLimitMax) {
		this.honorLimitMax = honorLimitMax;
	}

	public Integer getResidueHonorLimit() {
		return residueHonorLimit;
	}

	public void setResidueHonorLimit(Integer residueHonorLimit) {
		this.residueHonorLimit = residueHonorLimit;
	}

	public Integer getUsedHonorLimit() {
		return usedHonorLimit;
	}

	public void setUsedHonorLimit(Integer usedHonorLimit) {
		this.usedHonorLimit = usedHonorLimit;
	}

	/**
	 * 构建HonorLimitDto
	 * 
	 * @param honorLimit
	 * @return
	 */
	public static HonorLimitDto builder(HonorLimit honorLimit) {
		HonorLimitDto honorLimitDto = new HonorLimitDto();
		honorLimitDto.setHonorLimitId(honorLimit.getHonorLimitId());
		honorLimitDto.setHonorLimitMax(honorLimit.getHonorLimitMax());
		honorLimitDto.setResidueHonorLimit(honorLimit.getResidueHonorLimit());
		honorLimitDto.setUsedHonorLimit(honorLimit.getUsedHonorLimit());
		return honorLimitDto;
	}

}
