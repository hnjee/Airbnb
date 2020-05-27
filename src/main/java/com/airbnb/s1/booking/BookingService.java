package com.airbnb.s1.booking;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airbnb.s1.place.PlaceVO;

@Service
public class BookingService {

	@Autowired
	private BookingDAO bookingDAO;
	
	public BookingVO bookingSelect(BookingVO bookingVO) throws Exception{
		return bookingDAO.bookingSelect(bookingVO);
	}
	
	public int bookingEx(BookingVO bookingVO) throws Exception{
		return bookingDAO.bookingEx(bookingVO);
	}
	
	public int payment(BookingVO bookingVO) throws Exception {
		return bookingDAO.payment(bookingVO);
	}
	
	public List<BookingVO> notYet(BookingVO bookingVO) throws Exception {
		
		return bookingDAO.notYet(bookingVO);
	}
	
	public List<BookingVO> already(BookingVO bookingVO) throws Exception {
		
		return bookingDAO.already(bookingVO);
	}
	
	
	public int outRoom(BookingVO bookingVO) throws Exception {
		
		return bookingDAO.outRoom(bookingVO);
	}
	
	public BookingVO bookingResult(String bookingNum) throws Exception{
		return bookingDAO.bookingResult(bookingNum);
	}
	
}
