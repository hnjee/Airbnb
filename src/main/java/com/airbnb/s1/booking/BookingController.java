package com.airbnb.s1.booking;

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
	public ModelAndView booking1(ModelAndView mv, String placeNum) throws Exception {
		PlaceVO placeVO = placeService.placeSelect(placeNum);
		mv.addObject("vo", placeVO);
		mv.setViewName("booking/stepOne");
		return mv;
	}
	
	@RequestMapping(value = "stepTwo", method = RequestMethod.GET)
	public String booking2() {
		
		return "booking/stepTwo";
	}
	
	@RequestMapping(value="pay", method = RequestMethod.POST)
	public void bookingEx(String placeNum, String memberNum, String checkInDate, String checkOutDate) throws Exception {
		
		
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
		mv.setViewName("booking/pay");
		return mv;
	}
	
	@RequestMapping(value = "payment", method = RequestMethod.GET)
	public String payment() {
		
		return "booking/payment";
	}
	
	@RequestMapping(value = "payment", method = RequestMethod.POST)
	public int bookingDone(BookingVO bookingVO) throws Exception{
		System.out.println(bookingVO.getPayInfo());
		int result = bookingService.payment(bookingVO);
		return result;
	}

}
