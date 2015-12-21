/**  
 * @Package： com.color.common.dto
 * @FileName: OrderDto.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月13日
 */
package com.color.common.dto;

import java.util.Date;
import java.util.SortedSet;
import java.util.TreeSet;

import com.color.domain.OrderDetail;
import com.color.domain.User;

/**
 * @ClassName: OrderDto
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
public class OrderDto {
	
	private Integer orderId;
	private User user;
	private Integer playId;
	private Integer playGroupId;
	private String ip;
	private String betPath;
	private String issueNumber;
	private Date orderTime;
	private SortedSet<OrderDetail> orderDetails = new TreeSet<OrderDetail>();
	private String orderNumerical;
	
	
	public OrderDto() {
		super();
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
	public SortedSet<OrderDetail> getOrderDetails() {
		return orderDetails;
	}
	public void setOrderDetails(SortedSet<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public String getOrderNumerical() {
		return orderNumerical;
	}

	public void setOrderNumerical(String orderNumerical) {
		this.orderNumerical = orderNumerical;
	}

}
