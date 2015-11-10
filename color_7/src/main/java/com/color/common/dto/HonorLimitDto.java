package com.color.common.dto;

import java.math.BigDecimal;

import com.color.domain.User;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

/**
 * 信用额度实体
 */
public class HonorLimitDto implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3311046207198195249L;
	private Integer honorLimitId;
	private Integer honorLimitMax;
	private Integer residueHonorLimit;
	private Integer usedHonorLimit;
	
	//user
	private Integer userId;
	private Integer uid;
	private String codeName;
	private String userAccount;
	private String userMobile;
	private Short accountType;
	private Short userStatus;
	private BigDecimal percentMax;
	private Integer parentUserId;
	private String userLevel;
	private String userEmail;

	public HonorLimitDto() {
	}

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

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getCodeName() {
		return codeName;
	}

	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getUserMobile() {
		return userMobile;
	}

	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}

	public Short getAccountType() {
		return accountType;
	}

	public void setAccountType(Short accountType) {
		this.accountType = accountType;
	}

	public Short getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(Short userStatus) {
		this.userStatus = userStatus;
	}

	public BigDecimal getPercentMax() {
		return percentMax;
	}

	public void setPercentMax(BigDecimal percentMax) {
		this.percentMax = percentMax;
	}

	public Integer getParentUserId() {
		return parentUserId;
	}

	public void setParentUserId(Integer parentUserId) {
		this.parentUserId = parentUserId;
	}

	public String getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

}
