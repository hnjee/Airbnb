package com.airbnb.s1.place;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.airbnb.s1.booking.BookingVO;
import com.airbnb.s1.util.Pager;

@Controller
@RequestMapping("/place/**")
public class PlaceController {
	
	@Autowired
	private PlaceService placeService;
	
	@GetMapping("placeList")
	public ModelAndView placeList(Pager pager,String location, long guest, String date, String startDate,String endDate, ModelAndView mv) throws Exception{
		PlaceVO placeVO = new PlaceVO();
		placeVO.setPlaceNum("search");
		placeVO.setPlaceLocation(location);
		placeVO.setPlaceMaxGuest(guest);

		long totalCount = placeService.placeCount(placeVO);
		
		BookingVO bookingVO = new BookingVO();
		//기본키 null 방지하기 위해 임시로 값 넣어줌
		bookingVO.setBookingNum("booking test");
		//Date 형식으로 변환 String -> Date
		Date startData = Date.valueOf(startDate);
		Date endData = Date.valueOf(endDate);
		bookingVO.setCheckInDate(startData);
		bookingVO.setCheckOutDate(endData);

		
		List<PlaceVO> ar = placeService.placeList(placeVO,pager,bookingVO);
		mv.addObject("list", ar);
		mv.addObject("totalCount", totalCount);
		mv.addObject("pager", pager);
		mv.addObject("location",location);
		mv.addObject("guest",guest);
		mv.addObject("date",date);

		mv.setViewName("place/placeList");
		return mv;
	}
	
	

}
