package com.airbnb.s1.review;

import java.sql.Date;

public class ReviewVO {
	private String name;
	private String reviewNum; 
	private String placeNum;
	private String memberNum;
	private float reviewRate; 
	private String reviewDesc;
	private Date reviewDate;

	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(String reviewNum) {
		this.reviewNum = reviewNum;
	}
	public String getPlaceNum() {
		return placeNum;
	}
	public void setPlaceNum(String placeNum) {
		this.placeNum = placeNum;
	}
	public String getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(String memberNum) {
		this.memberNum = memberNum;
	}
	public float getReviewRate() {
		return reviewRate;
	}
	public void setReviewRate(float reviewRate) {
		this.reviewRate = reviewRate;
	}
	public String getReviewDesc() {
		return reviewDesc;
	}
	public void setReviewDesc(String reviewDesc) {
		this.reviewDesc = reviewDesc;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
}
