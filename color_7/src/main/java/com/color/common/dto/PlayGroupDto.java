package com.color.common.dto;

/**
 * Created by callsure on 2015/11/12.
 */
public class PlayGroupDto {

    private Integer playGroupId;

    private String playGroupName;

    private Short playGroupEnabled;

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
