package com.color.domain;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;

/**
 * 四定位号码实体
 */
public class FourNumber implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2919380715790722916L;
	private Integer fourNumberId;
	private FourDefaultOdds fourDefaultOdds;
	private String numberName;
	private BigDecimal currentOdds;
	private BigDecimal defaultOdds;

	public FourNumber() {
	}

	public FourNumber(Integer fourNumberId, FourDefaultOdds fourDefaultOdds,
			String numberName, BigDecimal currentOdds, BigDecimal defaultOdds) {
		this.fourNumberId = fourNumberId;
		this.fourDefaultOdds = fourDefaultOdds;
		this.numberName = numberName;
		this.currentOdds = currentOdds;
		this.defaultOdds = defaultOdds;
	}

	public Integer getFourNumberId() {
		return this.fourNumberId;
	}

	public void setFourNumberId(Integer fourNumberId) {
		this.fourNumberId = fourNumberId;
	}

	public FourDefaultOdds getFourDefaultOdds() {
		return this.fourDefaultOdds;
	}

	public void setFourDefaultOdds(FourDefaultOdds fourDefaultOdds) {
		this.fourDefaultOdds = fourDefaultOdds;
	}

	public String getNumberName() {
		return this.numberName;
	}

	public void setNumberName(String numberName) {
		this.numberName = numberName;
	}

	public BigDecimal getCurrentOdds() {
		return this.currentOdds;
	}

	public void setCurrentOdds(BigDecimal currentOdds) {
		this.currentOdds = currentOdds;
	}

	public BigDecimal getDefaultOdds() {
		return this.defaultOdds;
	}

	public void setDefaultOdds(BigDecimal defaultOdds) {
		this.defaultOdds = defaultOdds;
	}

}
