/**  
 * @Package： com.color.common.dto
 * @FileName: TwoNumberDto.java
 * @Purpose: (用一句话描述该文件做什么)
 * @Author: linrunshu
 * @Date: 2015年12月9日
 */
package com.color.common.dto;

import java.math.BigDecimal;

/**
 * @ClassName: TwoNumberDto
 * @Description: (这里用一句话描述这个类的作用)
 * @author linrunshu
 * @ApplicationType(应用程序类/WEB类/公共工具类)：(如：公共工具类)
 * 应用程序类：指有main()方法的类
 * WEB类：指Web访问使用的类
 * 公共工具类：指相对通用，与具体项目无关，不同项目可公用的类
 --------------------------------------------------------------------------------------
 * History：
   Date			Author			Version			Modifications
   2015年12月9日     linrunshu		V01.00.000		根据需求XXX，新建类

 --------------------------------------------------------------------------------------
 */
public class TwoNumberDto {
	
	private Integer twoNumberId;
	private String numberName;
	private BigDecimal currentOdds;
	private String nono;
	
	//二字定默认赔率
	private Integer twoDefaultOddsId;
	private Integer playId;
	private String playName;
	private BigDecimal defaultOdds;
	public Integer getTwoNumberId() {
		return twoNumberId;
	}
	public void setTwoNumberId(Integer twoNumberId) {
		this.twoNumberId = twoNumberId;
	}
	public String getNumberName() {
		return numberName;
	}
	public void setNumberName(String numberName) {
		this.numberName = numberName;
	}
	public BigDecimal getCurrentOdds() {
		return currentOdds;
	}
	public void setCurrentOdds(BigDecimal currentOdds) {
		this.currentOdds = currentOdds;
	}
	public Integer getTwoDefaultOddsId() {
		return twoDefaultOddsId;
	}
	public void setTwoDefaultOddsId(Integer twoDefaultOddsId) {
		this.twoDefaultOddsId = twoDefaultOddsId;
	}
	public Integer getPlayId() {
		return playId;
	}
	public void setPlayId(Integer playId) {
		this.playId = playId;
	}
	public String getPlayName() {
		return playName;
	}
	public void setPlayName(String playName) {
		this.playName = playName;
	}
	public BigDecimal getDefaultOdds() {
		return defaultOdds;
	}
	public void setDefaultOdds(BigDecimal defaultOdds) {
		this.defaultOdds = defaultOdds;
	}
	public String getNono() {
		return nono;
	}
	public void setNono(String nono) {
		this.nono = nono;
	}
	
}
