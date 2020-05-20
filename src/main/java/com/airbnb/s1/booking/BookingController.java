package com.airbnb.s1.booking;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping(value="/booking/**")
public class BookingController {

	@Autowired
	private BookingService bookingService;

	@RequestMapping(value = "stepOne", method = RequestMethod.GET)
	public String booking1() {
		
		return "stepOne";
	}
	
	@RequestMapping(value = "stepTwo", method = RequestMethod.GET)
	public String booking2() {
		
		return "stepTwo";
	}
	
	@RequestMapping(value = "pay", method = RequestMethod.GET)
	public String booking3() {
		
		return "pay";
	}
	
	@RequestMapping(value = "payment", method = RequestMethod.GET)
	public String payment() {
		
		return "payment";
	}
	
	@RequestMapping(value = "payment", method = RequestMethod.POST)
	public String bookingDone() {
		
		return "home";
	}

}
