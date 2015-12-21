/**  
 * @Package： com.color.common.dto
 * @FileName: SevencolorLotteryDto.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月13日
 */
package com.color.common.dto;

import java.util.Date;

/**
 * @ClassName: SevencolorLotteryDto
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
public class SevencolorLotteryDto {
	
	private Integer lotteryId;
	private String ballOne;
	private String ballTwo;
	private String ballThree;
	private String ballFour;
	private String ballFive;
	private String ballSix;
	private String ballSeven;
	private String lotteryNumber;
	private Date lotteryTime;
	private String issueNumber;
	public Integer getLotteryId() {
		return lotteryId;
	}
	public void setLotteryId(Integer lotteryId) {
		this.lotteryId = lotteryId;
	}
	public String getBallOne() {
		return ballOne;
	}
	public void setBallOne(String ballOne) {
		this.ballOne = ballOne;
	}
	public String getBallTwo() {
		return ballTwo;
	}
	public void setBallTwo(String ballTwo) {
		this.ballTwo = ballTwo;
	}
	public String getBallThree() {
		return ballThree;
	}
	public void setBallThree(String ballThree) {
		this.ballThree = ballThree;
	}
	public String getBallFour() {
		return ballFour;
	}
	public void setBallFour(String ballFour) {
		this.ballFour = ballFour;
	}
	public String getBallFive() {
		return ballFive;
	}
	public void setBallFive(String ballFive) {
		this.ballFive = ballFive;
	}
	public String getBallSix() {
		return ballSix;
	}
	public void setBallSix(String ballSix) {
		this.ballSix = ballSix;
	}
	public String getBallSeven() {
		return ballSeven;
	}
	public void setBallSeven(String ballSeven) {
		this.ballSeven = ballSeven;
	}
	public String getLotteryNumber() {
		return lotteryNumber;
	}
	public void setLotteryNumber(String lotteryNumber) {
		this.lotteryNumber = lotteryNumber;
	}
	public Date getLotteryTime() {
		return lotteryTime;
	}
	public void setLotteryTime(Date lotteryTime) {
		this.lotteryTime = lotteryTime;
	}
	public String getIssueNumber() {
		return issueNumber;
	}
	public void setIssueNumber(String issueNumber) {
		this.issueNumber = issueNumber;
	}
	
}
