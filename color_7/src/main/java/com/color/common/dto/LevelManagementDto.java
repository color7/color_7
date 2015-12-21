/**  
 * @Package： com.color.common.dto
 * @FileName: LevelManagement.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月19日
 */
package com.color.common.dto;

import java.math.BigDecimal;
import java.util.Date;

/**
 * @ClassName: LevelManagementDto
 * @Description: (这里用一句话描述这个类的作用)
 * @author linrunshu
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年12月19日     linrunshu		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
public class LevelManagementDto {
	
	private Integer userRoleId;
	private BigDecimal parentPercentMax;
	private BigDecimal percentMax;
	private Integer parentId;
	
	//用户
	private Integer userId;
	private Integer uid;
	private String codeName;
	private String userAccount;
	private Short accountType;
	private String userPassword;
	private Date createTime;
	private Short userStatus;
	private String userMobile;
	private Short isFirstLogin;
	private Integer parentUserId;
	private String userLevel;
	private String userEmail;
	
	//role
	private int roleId;
	private String roleName;
	private String roleAlias;
	private String roleNote;
	private Short allowDel;
	private Short allowEdit;
	private Short roleEnabled;
	//信用额度
	private Integer honorLimitId;
	private Integer honorLimitMax;
	private Integer residueHonorLimit;
	private Integer usedHonorLimit;
	
	public Integer getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(Integer userRoleId) {
		this.userRoleId = userRoleId;
	}
	public BigDecimal getParentPercentMax() {
		return parentPercentMax;
	}
	public void setParentPercentMax(BigDecimal parentPercentMax) {
		this.parentPercentMax = parentPercentMax;
	}
	public BigDecimal getPercentMax() {
		return percentMax;
	}
	public void setPercentMax(BigDecimal percentMax) {
		this.percentMax = percentMax;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
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
	public Short getAccountType() {
		return accountType;
	}
	public void setAccountType(Short accountType) {
		this.accountType = accountType;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Short getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(Short userStatus) {
		this.userStatus = userStatus;
	}
	public String getUserMobile() {
		return userMobile;
	}
	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}
	public Short getIsFirstLogin() {
		return isFirstLogin;
	}
	public void setIsFirstLogin(Short isFirstLogin) {
		this.isFirstLogin = isFirstLogin;
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
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getRoleAlias() {
		return roleAlias;
	}
	public void setRoleAlias(String roleAlias) {
		this.roleAlias = roleAlias;
	}
	public String getRoleNote() {
		return roleNote;
	}
	public void setRoleNote(String roleNote) {
		this.roleNote = roleNote;
	}
	public Short getAllowDel() {
		return allowDel;
	}
	public void setAllowDel(Short allowDel) {
		this.allowDel = allowDel;
	}
	public Short getAllowEdit() {
		return allowEdit;
	}
	public void setAllowEdit(Short allowEdit) {
		this.allowEdit = allowEdit;
	}
	public Short getRoleEnabled() {
		return roleEnabled;
	}
	public void setRoleEnabled(Short roleEnabled) {
		this.roleEnabled = roleEnabled;
	}
	public Integer getHonorLimitId() {
		return honorLimitId;
	}
	public void setHonorLimitId(Integer honorLimitId) {
		this.honorLimitId = honorLimitId;
	}
	
}
