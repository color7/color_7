package com.color.common.dto;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.color.domain.User;

/**
 * 下级dto
 * 
 * @author Zohar
 * 
 */
public class JuniorDto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5136609477584557203L;

	/**
	 * uid
	 * */
	private Integer uid;
	/**
	 * 用户id
	 * */
	private Integer userId;
	/**
	 * 帐号
	 * */
	private String userAccount;
	/**
	 * 代号
	 * */
	private String codeName;
	/**
	 * 信用额度
	 * */
	private Integer honorLimitMax;
	/**
	 * 修改时间
	 * */
	private Date updateTime;
	/**
	 * 修改人
	 * */
	private String updateBy;
	/**
	 * 代理ip
	 * */
	private String agentIp;

	/**
	 * 状态
	 * */
	private Short userStatus;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getCodeName() {
		return codeName;
	}

	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}

	public Integer getHonorLimitMax() {
		return honorLimitMax;
	}

	public void setHonorLimitMax(Integer honorLimitMax) {
		this.honorLimitMax = honorLimitMax;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public String getAgentIp() {
		return agentIp;
	}

	public void setAgentIp(String agentIp) {
		this.agentIp = agentIp;
	}

	public Short getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(Short userStatus) {
		this.userStatus = userStatus;
	}

	/**
	 * 构建JuniorDto
	 * 
	 * @param user
	 * @return
	 */
	public static JuniorDto builder(User user) {
		JuniorDto juniorDto = new JuniorDto();
		juniorDto.setUid(user.getUid());
		juniorDto.setUserId(user.getUserId());
		juniorDto.setUserAccount(user.getUserAccount());
		juniorDto.setCodeName(user.getCodeName());
		juniorDto.setHonorLimitMax(user.getHonorLimit().getHonorLimitMax());
		juniorDto.setUpdateTime(user.getUpdateTime());
		juniorDto.setUpdateBy(user.getUpdateBy().getUserAccount());
		juniorDto.setAgentIp(user.getAgentIp());
		return juniorDto;
	}

}
