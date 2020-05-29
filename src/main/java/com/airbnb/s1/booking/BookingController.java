package com.airbnb.s1.booking;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.airbnb.s1.member.MemberService;
import com.airbnb.s1.member.MemberVO;
import com.airbnb.s1.member.memberFile.MemberFileVO;
import com.airbnb.s1.place.PlaceService;
import com.airbnb.s1.place.PlaceVO;
import com.airbnb.s1.place.placeFile.PlaceFileVO;
import com.airbnb.s1.review.ReviewService;
import com.airbnb.s1.review.ReviewVO;



@Controller
@RequestMapping(value="/booking/**")
public class BookingController {

	@Autowired
	private BookingService bookingService;
	@Autowired
	private PlaceService placeService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value = "stepOne", method = RequestMethod.GET)
	public ModelAndView booking1(ModelAndView mv, String placeNum, java.sql.Date checkInDate, java.sql.Date checkOutDate, int guestTotal) throws Exception {
		PlaceVO placeVO = placeService.placeSelect(placeNum);
		List<PlaceFileVO> placeFileList = placeService.fileList(placeVO);
		 long calDate = checkOutDate.getTime() - checkInDate.getTime(); 
	       
	     long calDateDays = calDate / ( 24*60*60*1000); 
	 
	     calDateDays = Math.abs(calDateDays);
	     mv.addObject("fileList", placeFileList);
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
		List<PlaceFileVO> placeFileList = placeService.fileList(placeVO);
		MemberFileVO memberFileVO = memberService.fileSelect(placeVO.getMemberNum());
		 long calDate = checkOutDate.getTime() - checkInDate.getTime(); 
	       
	     long calDateDays = calDate / ( 24*60*60*1000); 
	 
	     calDateDays = Math.abs(calDateDays);
	     mv.addObject("hostFile", memberFileVO);
	     mv.addObject("fileList", placeFileList);
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
	     List<PlaceFileVO> placeFileList = placeService.fileList(placeVO);
	     
	     mv.addObject("fileList", placeFileList);
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
	@ResponseBody
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
	
	@RequestMapping(value="review", method = RequestMethod.POST)
	public ModelAndView review(ModelAndView mv, String placeNum, String bookingNum) throws Exception {
		
		bookingService.afterReview(bookingNum);
		PlaceVO placeVO = placeService.placeSelect(placeNum);
		List<PlaceFileVO> placeFileList = placeService.fileList(placeVO);
		
		mv.addObject("vo", placeVO);
		mv.addObject("fileList", placeFileList);
		mv.addObject("placeNum", placeNum);
		mv.setViewName("booking/review");
		
		return mv;
	}
	
	@RequestMapping(value="reviewInsert", method = RequestMethod.POST)
	public ModelAndView reviewInsert(ModelAndView mv, ReviewVO reviewVO) throws Exception {
		reviewService.reviewInsert(reviewVO);
		BookingVO bookingVO = new BookingVO();
		bookingVO.setMemberNum(reviewVO.getMemberNum());
		
		List<BookingVO> ar = bookingService.notYet(bookingVO);
		
		mv.addObject("list", ar);
		mv.addObject("memberNum", bookingVO);
		mv.setViewName("booking/myPage");
		
		return mv;
	}
	
	@RequestMapping(value = "result")
	public ModelAndView result(ModelAndView mv, String bookingNum) throws Exception {
		BookingVO bookingVO = bookingService.bookingResult(bookingNum);
		PlaceVO placeVO = placeService.placeSelect(bookingVO.getPlaceNum());
		List<PlaceFileVO> placeFileList = placeService.fileList(placeVO);
		mv.addObject("fileList", placeFileList);
		mv.addObject("vo", bookingVO);
		mv.setViewName("booking/result");
		return mv;
	}
	
	
	
}
