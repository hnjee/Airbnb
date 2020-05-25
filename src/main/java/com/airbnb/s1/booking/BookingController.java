package com.airbnb.s1.booking;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView payment(ModelAndView mv, BookingVO bookingVO) throws Exception{
		
		PlaceVO placeVO = placeService.placeSelect(bookingVO.getPlaceNum());
		
		long calDate = bookingVO.getCheckOutDate().getTime() - bookingVO.getCheckInDate().getTime(); 
	       
	     long calDateDays = calDate / ( 24*60*60*1000); 
	 
	     calDateDays = Math.abs(calDateDays);

		mv.addObject("days", calDateDays);
		mv.addObject("bvo", bookingVO);
		mv.addObject("vo", placeVO);
		mv.setViewName("booking/payment");
		return mv;
	}
	
	@RequestMapping(value = "payment", method = RequestMethod.POST)
	public String bookingDone() {
		
		return "home";
	}

}
