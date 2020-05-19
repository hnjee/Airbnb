package com.airbnb.s1.place;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.airbnb.s1.booking.BookingVO;
import com.airbnb.s1.review.ReviewService;
import com.airbnb.s1.review.ReviewVO;
import com.airbnb.s1.util.Pager;

@Controller
@RequestMapping("/place/**")
public class PlaceController {
	@Autowired
	private PlaceService placeService;
	@Autowired
	private ReviewService reviewService;
	
	@GetMapping("placeList")
	public ModelAndView placeList(Pager pager,String location,String guest, long guestData, String date, String startDate,String endDate, ModelAndView mv) throws Exception{
		PlaceVO placeVO = new PlaceVO();
		//기본키 null방지
		placeVO.setPlaceNum("search");
		placeVO.setPlaceLocation(location);
		placeVO.setPlaceMaxGuest(guestData);

		long totalCount = placeService.placeCount(placeVO);
		
		BookingVO bookingVO = new BookingVO();
		//기본키 null 방지하기 위해 임시로 값 넣어줌
		bookingVO.setBookingNum("booking test");
		//Date 형식으로 변환 String -> Date
		Date startData = Date.valueOf(startDate);
		Date endData = Date.valueOf(endDate);

		
		bookingVO.setCheckInDate(startData);
		bookingVO.setCheckOutDate(endData);

		
		List<PlaceVO> ar = placeService.placeList(placeVO,pager,bookingVO,guestData);
		
		mv.addObject("list", ar);
		mv.addObject("totalCount", totalCount);
		mv.addObject("pager", pager);
		mv.addObject("location",location);
		mv.addObject("guest",guest);
		mv.addObject("date",date);
		mv.addObject("startDate",startDate);
		mv.addObject("endDate",endDate);
		mv.addObject("guestData", guestData);
		mv.setViewName("place/placeList");
		return mv;
	}

	@GetMapping("placeSelect")
	public ModelAndView placeSelect(ModelAndView mv, Pager pager) throws Exception{
		System.out.println("Pager.getPlaceNum: "+pager.getPlaceNum());
		PlaceVO placeVO = placeService.placeSelect(pager.getPlaceNum());
		List<ReviewVO> reviewVOs  = reviewService.reviewSelect(pager);
		
		//리뷰 전체 개수 
		long reviewCnt = reviewService.reviewCount(pager.getPlaceNum());
		//평균 계산 
		float ratingSum = reviewService.ratingSum(pager.getPlaceNum());
		float ratingAvg = ratingSum/reviewCnt;
		
		mv.addObject("vo", placeVO);
		mv.addObject("reviewList", reviewVOs);
		mv.addObject("rateAvg", Math.round(ratingAvg*100)/100.0);
		mv.addObject("reviewCnt", reviewCnt);
		mv.addObject("pager", pager);
		
		mv.setViewName("place/placeSelect");
		return mv;
	}
	
	@GetMapping("getReview")
	public ModelAndView getReview(Pager pager, ModelAndView mv) throws Exception{
		System.out.println("PlaceNum: "+pager.getPlaceNum()+", CurPage: "+pager.getCurPage());
		System.out.println("pagerSearch: "+pager.getSearch());
		List<ReviewVO> reviews = reviewService.reviewSelect(pager);
		mv.addObject("pager2", pager);
		mv.addObject("reviewList", reviews);
		return mv;
	}
}
