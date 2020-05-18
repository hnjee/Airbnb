package com.airbnb.s1.booking;

import java.sql.Date;

public class BookingVO {
	private String bookingNum;
	private String placeNum;
	private String memberNum;
	private long bookingStat;
	private Date checkInDate;
	private Date checkOutDate;
	
	public String getBookingNum() {
		return bookingNum;
	}
	public void setBookingNum(String bookingNum) {
		this.bookingNum = bookingNum;
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
	public long getBookingStat() {
		return bookingStat;
	}
	public void setBookingStat(long bookingStat) {
		this.bookingStat = bookingStat;
	}
	public Date getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}
	public Date getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	
	

}
