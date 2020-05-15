package com.airbnb.s1.place;

import java.sql.Date;

public class PlaceVO {
	private String placeNum;
	private String memberNum;
	private String placeName;
	private String placeLocation;
	private Long placePrice;
	private String placeImage;
	private Long placeType;
	private Long placeMaxGuest;
	private String placeDesc;
	private String placeRule;
	private Long bed;
	private Long bathroom;
	private Date checkInTime;
	private Date checkOutTime;
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
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getPlaceLocation() {
		return placeLocation;
	}
	public void setPlaceLocation(String placeLocation) {
		this.placeLocation = placeLocation;
	}
	public Long getPlacePrice() {
		return placePrice;
	}
	public void setPlacePrice(Long placePrice) {
		this.placePrice = placePrice;
	}
	public String getPlaceImage() {
		return placeImage;
	}
	public void setPlaceImage(String placeImage) {
		this.placeImage = placeImage;
	}
	public Long getPlaceType() {
		return placeType;
	}
	public void setPlaceType(Long placeType) {
		this.placeType = placeType;
	}
	public Long getPlaceMaxGuest() {
		return placeMaxGuest;
	}
	public void setPlaceMaxGuest(Long placeMaxGuest) {
		this.placeMaxGuest = placeMaxGuest;
	}
	public String getPlaceDesc() {
		return placeDesc;
	}
	public void setPlaceDesc(String placeDesc) {
		this.placeDesc = placeDesc;
	}
	public String getPlaceRule() {
		return placeRule;
	}
	public void setPlaceRule(String placeRule) {
		this.placeRule = placeRule;
	}
	public Long getBed() {
		return bed;
	}
	public void setBed(Long bed) {
		this.bed = bed;
	}
	public Long getBathroom() {
		return bathroom;
	}
	public void setBathroom(Long bathroom) {
		this.bathroom = bathroom;
	}
	public Date getCheckInTime() {
		return checkInTime;
	}
	public void setCheckInTime(Date checkInTime) {
		this.checkInTime = checkInTime;
	}
	public Date getCheckOutTime() {
		return checkOutTime;
	}
	public void setCheckOutTime(Date checkOutTime) {
		this.checkOutTime = checkOutTime;
	}

	
	
	
	
	

}
