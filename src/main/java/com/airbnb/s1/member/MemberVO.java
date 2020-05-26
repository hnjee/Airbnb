package com.airbnb.s1.member;

import java.util.Date;

public class MemberVO {

	private String memberNum;
	private String email;
	private String name;
	private String familyName;
	private String PW;
	private String phoneNum;
	private Date joinDate;
	private String hostDesc;
	
	
	public String getHostDesc() {
		return hostDesc;
	}
	public void setHostDesc(String hostDesc) {
		this.hostDesc = hostDesc;
	}
	public String getPW() {
		return PW;
	}
	public void setPW(String PW) {
		this.PW = PW;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	
	public String getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(String memberNum) {
		this.memberNum = memberNum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFamilyName() {
		return familyName;
	}
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}
	
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	

	
	
}
