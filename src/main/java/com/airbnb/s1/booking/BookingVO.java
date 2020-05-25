package com.airbnb.s1.booking;

import java.sql.Date;

public class BookingVO {
	private String bookingNum;
	private String placeNum;
	private String memberNum;
	private long bookingStat;
	private Date checkInDate;
	private Date checkOutDate;
	private long guestTotal;
	private long payType;
	private long payInfo;
	private long payTotal;
	private Date payDate;
	

	public long getPayType() {
		return payType;
	}
	public void setPayType(long payType) {
		this.payType = payType;
	}
	public long getPayInfo() {
		return payInfo;
	}
	public void setPayInfo(long payInfo) {
		this.payInfo = payInfo;
	}
	public long getPayTotal() {
		return payTotal;
	}
	public void setPayTotal(long payTotal) {
		this.payTotal = payTotal;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	public long getGuestTotal() {
		return guestTotal;
	}
	public void setGuestTotal(long guestTotal) {
		this.guestTotal = guestTotal;
	}

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
