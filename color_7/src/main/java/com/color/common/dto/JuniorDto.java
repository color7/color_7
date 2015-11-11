package com.color.common.dto;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

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
	private Date modifyTime;
	/**
	 * 修改者
	 * */
	private String modifyByUser;
	/**
	 * ip
	 * */
	private String ip;

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

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public String getModifyByUser() {
		return modifyByUser;
	}

	public void setModifyByUser(String modifyByUser) {
		this.modifyByUser = modifyByUser;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Short getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(Short userStatus) {
		this.userStatus = userStatus;
	}

}
