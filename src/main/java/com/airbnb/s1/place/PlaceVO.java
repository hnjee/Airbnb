package com.airbnb.s1.place;

import java.sql.Date;

public class PlaceVO {
	private String placeNum;
	private String hostNum;
	private String placeName;
	private String placeLocation;
	private Long placePrice;
	private String placeImage;
	private Long placeType;
	private Long placeMaxGuest;
	private Date placeDate;
	private String placeDesc;
	private String placeRule;
	private Long bed;
	private Long bathroom;
	private Long checkIn;
	private Long checkOut;
	
	public String getPlaceNum() {
		return placeNum;
	}
	public void setPlaceNum(String placeNum) {
		this.placeNum = placeNum;
	}
	public String getHostNum() {
		return hostNum;
	}
	public void setHostNum(String hostNum) {
		this.hostNum = hostNum;
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
	public Date getPlaceDate() {
		return placeDate;
	}
	public void setPlaceDate(Date placeDate) {
		this.placeDate = placeDate;
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
	public Long getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(Long checkIn) {
		this.checkIn = checkIn;
	}
	public Long getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(Long checkOut) {
		this.checkOut = checkOut;
	}
	
	
}
