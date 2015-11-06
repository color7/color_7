package com.color.domain;

// Generated 2015-11-2 0:52:26 by Hibernate Tools 4.0.0

/**
 * 消息推送实体
 */
public class MsgPush implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 434143220126827597L;
	private Integer msgPushId;
	private String pushContent;

	public MsgPush() {
	}

	public MsgPush(Integer msgPushId, String pushContent) {
		this.msgPushId = msgPushId;
		this.pushContent = pushContent;
	}

	public Integer getMsgPushId() {
		return this.msgPushId;
	}

	public void setMsgPushId(Integer msgPushId) {
		this.msgPushId = msgPushId;
	}

	public String getPushContent() {
		return this.pushContent;
	}

	public void setPushContent(String pushContent) {
		this.pushContent = pushContent;
	}

}
