package com.airbnb.s1.message;

import java.sql.Date;

public class MessageVO {
	
	private long messageNum;
	private String s_memberNum;
	private String sendName;
	private String r_memberNum;
	private String receiveName;
	private String message;
	private Date sendDate;
	private String placeNum;
	private String sendTime;
	
	public String getSendTime() {
		return sendTime;
	}
	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
	public String getPlaceNum() {
		return placeNum;
	}
	public void setPlaceNum(String placeNum) {
		this.placeNum = placeNum;
	}
	public long getMessageNum() {
		return messageNum;
	}
	public void setMessageNum(long messageNum) {
		this.messageNum = messageNum;
	}
	public String getS_memberNum() {
		return s_memberNum;
	}
	public void setS_memberNum(String s_memberNum) {
		this.s_memberNum = s_memberNum;
	}
	public String getSendName() {
		return sendName;
	}
	public void setSendName(String sendName) {
		this.sendName = sendName;
	}
	public String getR_memberNum() {
		return r_memberNum;
	}
	public void setR_memberNum(String r_memberNum) {
		this.r_memberNum = r_memberNum;
	}
	public String getReceiveName() {
		return receiveName;
	}
	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getSendDate() {
		return sendDate;
	}
	public void setSendDate(Date sendDate) {
		this.sendDate = sendDate;
	}
	

}
