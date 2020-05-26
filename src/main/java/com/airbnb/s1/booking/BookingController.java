package com.airbnb.s1.booking;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.airbnb.s1.member.MemberVO;
import com.airbnb.s1.place.PlaceService;
import com.airbnb.s1.place.PlaceVO;



@Controller
@RequestMapping(value="/booking/**")
public class BookingController {

	@Autowired
	private BookingService bookingService;
	@Autowired
	private PlaceService placeService;

	@RequestMapping(value = "stepOne", method = RequestMethod.GET)
	public ModelAndView booking1(ModelAndView mv, String placeNum, java.sql.Date checkInDate, java.sql.Date checkOutDate, int guestTotal) throws Exception {
		PlaceVO placeVO = placeService.placeSelect(placeNum);
		
		 long calDate = checkOutDate.getTime() - checkInDate.getTime(); 
	       
	     long calDateDays = calDate / ( 24*60*60*1000); 
	 
	     calDateDays = Math.abs(calDateDays);
		mv.addObject("days", calDateDays);
		mv.addObject("vo", placeVO);
		mv.addObject("checkInDate", checkInDate);
		mv.addObject("checkOutDate", checkOutDate);
		mv.addObject("guestTotal", guestTotal);
		mv.setViewName("booking/stepOne");
		return mv;
	}
	
	@RequestMapping(value = "stepTwo", method = RequestMethod.GET)
	public ModelAndView booking2(ModelAndView mv, String placeNum, java.sql.Date checkInDate, java.sql.Date checkOutDate, int guestTotal) throws Exception {
		PlaceVO placeVO = placeService.placeSelect(placeNum);
		 long calDate = checkOutDate.getTime() - checkInDate.getTime(); 
	       
	     long calDateDays = calDate / ( 24*60*60*1000); 
	 
	     calDateDays = Math.abs(calDateDays);

		mv.addObject("days", calDateDays);
		mv.addObject("vo", placeVO);
		mv.addObject("checkInDate", checkInDate);
		mv.addObject("checkOutDate", checkOutDate);
		mv.addObject("guestTotal", guestTotal);
		mv.setViewName("booking/stepTwo");
		return mv;
	}
	
	@RequestMapping(value="pay", method = RequestMethod.POST)
	public ModelAndView bookingEx(ModelAndView mv, BookingVO bookingVO) throws Exception {
		
		 long calDate = bookingVO.getCheckOutDate().getTime() - bookingVO.getCheckInDate().getTime(); 
	       
	     long calDateDays = calDate / ( 24*60*60*1000); 
	 
	     calDateDays = Math.abs(calDateDays);
	     PlaceVO placeVO = placeService.placeSelect(bookingVO.getPlaceNum());
	     mv.addObject("vo", placeVO);
		mv.addObject("days", calDateDays);
		
		int result = bookingService.bookingEx(bookingVO);
		BookingVO bookingVO_n = bookingService.bookingSelect(bookingVO);
		if (result>0) {
			mv.addObject("bvo", bookingVO_n);
			mv.setViewName("booking/pay");
			
		} else {
			System.out.println("잠시");
		}
		return mv;
		
	}
	
	
	
	@RequestMapping(value = "payment", method = RequestMethod.GET)
	public ModelAndView payment(ModelAndView mv, BookingVO bookingVO, long cardNum) throws Exception{
		
		PlaceVO placeVO = placeService.placeSelect(bookingVO.getPlaceNum());
		
		long calDate = bookingVO.getCheckOutDate().getTime() - bookingVO.getCheckInDate().getTime(); 
	       
	     long calDateDays = calDate / ( 24*60*60*1000); 
	 
	     calDateDays = Math.abs(calDateDays);
	     mv.addObject("payInfo", cardNum);
		mv.addObject("days", calDateDays);
		mv.addObject("bvo", bookingVO);
		mv.addObject("vo", placeVO);
		mv.setViewName("booking/payment");
		return mv;
	}
	
	@RequestMapping(value = "payment", method = RequestMethod.POST)
	public int bookingDone(BookingVO bookingVO) throws Exception{
		
		int result = bookingService.payment(bookingVO);
		return result;
	}
	
	@RequestMapping(value="bookingList", method = RequestMethod.GET)
	public ModelAndView bookingList(ModelAndView mv, BookingVO bookingVO) throws Exception{
		
		bookingService.outRoom(bookingVO);
		List<BookingVO> ar = bookingService.notYet(bookingVO);
		
		mv.addObject("list", ar);
		mv.addObject("memberNum", bookingVO);
		mv.setViewName("booking/myPage");
		
		return mv;
	}
	
	@RequestMapping(value="already", method = RequestMethod.POST)
	public ModelAndView already(ModelAndView mv, BookingVO bookingVO) throws Exception {
		List<BookingVO> ar = bookingService.already(bookingVO);
		
		mv.addObject("list", ar);
		mv.setViewName("jsp/already");
		return mv;
	}
	@RequestMapping(value="notYet", method = RequestMethod.POST)
	public ModelAndView notYet(ModelAndView mv, BookingVO bookingVO) throws Exception {
		List<BookingVO> ar = bookingService.notYet(bookingVO);
		
		mv.addObject("list", ar);
		mv.setViewName("jsp/notYet");
		return mv;
	}
}
