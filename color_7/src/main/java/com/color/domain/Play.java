package com.color.domain;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

import java.math.BigDecimal;

/**
 * 玩法实体
 */
public class Play implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3501098292678171801L;
	private Integer playId;
	private PlayGroup playGroup;
	private String palyName;
	private Short palyEnabled;
	private String oddsMax;
	private BigDecimal palyMin;
	private Integer singleMax;
	private Integer singleItemMax;

	public Play() {
	}

	public Play(Integer playId, PlayGroup playGroup, String palyName,
			Short palyEnabled, String oddsMax, BigDecimal palyMin,
			Integer singleMax, Integer singleItemMax) {
		this.playId = playId;
		this.playGroup = playGroup;
		this.palyName = palyName;
		this.palyEnabled = palyEnabled;
		this.oddsMax = oddsMax;
		this.palyMin = palyMin;
		this.singleMax = singleMax;
		this.singleItemMax = singleItemMax;
	}

	public Integer getPlayId() {
		return this.playId;
	}

	public void setPlayId(Integer playId) {
		this.playId = playId;
	}

	public PlayGroup getPlayGroup() {
		return this.playGroup;
	}

	public void setPlayGroup(PlayGroup playGroup) {
		this.playGroup = playGroup;
	}

	public String getPalyName() {
		return this.palyName;
	}

	public void setPalyName(String palyName) {
		this.palyName = palyName;
	}

	public Short getPalyEnabled() {
		return this.palyEnabled;
	}

	public void setPalyEnabled(Short palyEnabled) {
		this.palyEnabled = palyEnabled;
	}

	public String getOddsMax() { return oddsMax; }

	public void setOddsMax(String oddsMax) { this.oddsMax = oddsMax; }

	public BigDecimal getPalyMin() { return palyMin; }

	public void setPalyMin(BigDecimal palyMin) { this.palyMin = palyMin; }

	public Integer getSingleMax() {
		return this.singleMax;
	}

	public void setSingleMax(Integer singleMax) {
		this.singleMax = singleMax;
	}

	public Integer getSingleItemMax() {
		return this.singleItemMax;
	}

	public void setSingleItemMax(Integer singleItemMax) {
		this.singleItemMax = singleItemMax;
	}

}
