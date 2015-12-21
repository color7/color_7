/**  
 * @Package： com.color.common.dto
 * @FileName: OrderDetailDto.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月13日
 */
package com.color.common.dto;

import java.math.BigDecimal;
import java.util.Date;

import com.color.domain.User;

/**
 * @ClassName: OrderDetailDto
 * @Description: (这里用一句话描述这个类的作用)
 * @author linrunshu
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年12月13日     linrunshu		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
public class OrderDetailDto {
	
	private Integer orderDetailId;
	private String orderNumber;
	private BigDecimal orderOdds;
	private BigDecimal orderMoney;
	private BigDecimal winningMoney;
	private Short orderStatus;
	private Date cancelTime;
	private BigDecimal backWater;
	private Short isWinning;
	
	//订单主表
	private Integer orderId;
	private User user;
	private Integer playId;
	private Integer playGroupId;
	private String ip;
	private String betPath;
	private String issueNumber;
	private Date orderTime;
	private String orderNumerical;
	public Integer getOrderDetailId() {
		return orderDetailId;
	}
	public void setOrderDetailId(Integer orderDetailId) {
		this.orderDetailId = orderDetailId;
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public BigDecimal getOrderOdds() {
		return orderOdds;
	}
	public void setOrderOdds(BigDecimal orderOdds) {
		this.orderOdds = orderOdds;
	}
	public BigDecimal getOrderMoney() {
		return orderMoney;
	}
	public void setOrderMoney(BigDecimal orderMoney) {
		this.orderMoney = orderMoney;
	}
	public BigDecimal getWinningMoney() {
		return winningMoney;
	}
	public void setWinningMoney(BigDecimal winningMoney) {
		this.winningMoney = winningMoney;
	}
	public Short getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(Short orderStatus) {
		this.orderStatus = orderStatus;
	}
	public Date getCancelTime() {
		return cancelTime;
	}
	public void setCancelTime(Date cancelTime) {
		this.cancelTime = cancelTime;
	}
	public BigDecimal getBackWater() {
		return backWater;
	}
	public void setBackWater(BigDecimal backWater) {
		this.backWater = backWater;
	}
	public Short getIsWinning() {
		return isWinning;
	}
	public void setIsWinning(Short isWinning) {
		this.isWinning = isWinning;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getPlayId() {
		return playId;
	}
	public void setPlayId(Integer playId) {
		this.playId = playId;
	}
	public Integer getPlayGroupId() {
		return playGroupId;
	}
	public void setPlayGroupId(Integer playGroupId) {
		this.playGroupId = playGroupId;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getBetPath() {
		return betPath;
	}
	public void setBetPath(String betPath) {
		this.betPath = betPath;
	}
	public String getIssueNumber() {
		return issueNumber;
	}
	public void setIssueNumber(String issueNumber) {
		this.issueNumber = issueNumber;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public String getOrderNumerical() {
		return orderNumerical;
	}
	public void setOrderNumerical(String orderNumerical) {
		this.orderNumerical = orderNumerical;
	}
	
}
