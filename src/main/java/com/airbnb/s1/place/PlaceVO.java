package com.airbnb.s1.place;

import java.util.List;

import com.airbnb.s1.member.memberFile.MemberFileVO;
import com.airbnb.s1.place.placeFile.PlaceFileVO;

public class PlaceVO {
	private String placeNum;
	private String memberNum;
	private String placeName;
	private String placeLocation;
	private Long placePrice;
	private String placeImage;
	private String placeType;
	private Long placeMaxGuest;
	private String placeDesc;
	private String placeRule;
	private Long bed;
	private Long bathroom;
	private Long checkInTime;
	private Long checkOutTime;
	private PlaceFileVO placeFileVO;
	private String fileName;
	private String oriName;
	private List<PlaceFileVO> placeFileVOs;
	
	
	private String hostDesc;
	private String name;
	private MemberFileVO memberFileVO;
	
	
	
	
	
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getOriName() {
		return oriName;
	}
	public void setOriName(String oriName) {
		this.oriName = oriName;
	}
	public MemberFileVO getMemberFileVO() {
		return memberFileVO;
	}
	public void setMemberFileVO(MemberFileVO memberFileVO) {
		this.memberFileVO = memberFileVO;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHostDesc() {
		return hostDesc;
	}
	public void setHostDesc(String hostDesc) {
		this.hostDesc = hostDesc;
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
	public String getPlaceType() {
		return placeType;
	}
	public void setPlaceType(String placeType) {
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
	public Long getCheckInTime() {
		return checkInTime;
	}
	public void setCheckInTime(Long checkInTime) {
		this.checkInTime = checkInTime;
	}
	public Long getCheckOutTime() {
		return checkOutTime;
	}
	public void setCheckOutTime(Long checkOutTime) {
		this.checkOutTime = checkOutTime;
	}
	public PlaceFileVO getPlaceFileVO() {
		return placeFileVO;
	}
	public void setPlaceFileVO(PlaceFileVO placeFileVO) {
		this.placeFileVO = placeFileVO;
	}
	public List<PlaceFileVO> getPlaceFileVOs() {
		return placeFileVOs;
	}
	public void setPlaceFileVOs(List<PlaceFileVO> placeFileVOs) {
		this.placeFileVOs = placeFileVOs;
	}
	
	
	
}
