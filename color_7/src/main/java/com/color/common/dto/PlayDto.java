package com.color.common.dto;

import com.color.domain.PlayGroup;

import java.math.BigDecimal;

/**
 * Created by callsure on 2015/11/12.
 */
public class PlayDto {
    private Integer playId;
    private String palyName;
    private Short palyEnabled;
    private String oddsMax;
    private BigDecimal palyMin;
    private Integer singleMax;
    private Integer singleItemMax;

    //玩法组
    private Integer playGroupId;
    private String playGroupName;
    private Short playGroupEnabled;

    public Integer getPlayId() {
        return playId;
    }

    public void setPlayId(Integer playId) {
        this.playId = playId;
    }

    public String getPalyName() {
        return palyName;
    }

    public void setPalyName(String palyName) {
        this.palyName = palyName;
    }

    public Short getPalyEnabled() {
        return palyEnabled;
    }

    public void setPalyEnabled(Short palyEnabled) {
        this.palyEnabled = palyEnabled;
    }

    public String getOddsMax() {
        return oddsMax;
    }

    public void setOddsMax(String oddsMax) {
        this.oddsMax = oddsMax;
    }

    public BigDecimal getPalyMin() {
        return palyMin;
    }

    public void setPalyMin(BigDecimal palyMin) {
        this.palyMin = palyMin;
    }

    public Integer getSingleMax() {
        return singleMax;
    }

    public void setSingleMax(Integer singleMax) {
        this.singleMax = singleMax;
    }

    public Integer getSingleItemMax() {
        return singleItemMax;
    }

    public void setSingleItemMax(Integer singleItemMax) {
        this.singleItemMax = singleItemMax;
    }

    public Integer getPlayGroupId() {
        return playGroupId;
    }

    public void setPlayGroupId(Integer playGroupId) {
        this.playGroupId = playGroupId;
    }

    public String getPlayGroupName() {
        return playGroupName;
    }

    public void setPlayGroupName(String playGroupName) {
        this.playGroupName = playGroupName;
    }

    public Short getPlayGroupEnabled() {
        return playGroupEnabled;
    }

    public void setPlayGroupEnabled(Short playGroupEnabled) {
        this.playGroupEnabled = playGroupEnabled;
    }
}
