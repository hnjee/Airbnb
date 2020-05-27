package com.airbnb.s1.place;

import java.lang.reflect.Member;
import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.airbnb.s1.amenity.AmenityService;
import com.airbnb.s1.amenity.AmenityVO;
import com.airbnb.s1.booking.BookingVO;
import com.airbnb.s1.member.MemberService;
import com.airbnb.s1.member.memberFile.MemberFileVO;
import com.airbnb.s1.place.placeFile.PlaceFileVO;
import com.airbnb.s1.review.ReviewService;
import com.airbnb.s1.review.ReviewVO;
import com.airbnb.s1.util.Pager;
import com.airbnb.s1.util.ReviewPager;

@Controller
@RequestMapping("/place/**")
public class PlaceController {
	@Autowired
	private PlaceService placeService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private AmenityService amenityService;
	@Autowired
	private MemberService memberService;

	//fileTest를 위한 매핑
	@GetMapping("fileTest")
	public void fileTest() throws Exception{
		
	}
	
	@PostMapping("fileTest")
	public void fileTest(MultipartFile[] files, String placeNum) throws Exception{		
		PlaceFileVO placeFileVO = new PlaceFileVO();
		placeFileVO.setPlaceNum(placeNum);
		placeService.fileInsert(placeNum, files);		
	}
	
	@GetMapping("fileView")
	public ModelAndView fileView(ModelAndView mv,String placeNum) throws Exception{		
		PlaceVO placeVO = new PlaceVO();
		placeVO.setPlaceNum(placeNum);
		List<PlaceFileVO> placeFileList = placeService.fileList(placeVO);
		mv.addObject("fileList", placeFileList);
		return mv;
	}

	//fileTest 끝
	
	
	@GetMapping("placeList")
	public ModelAndView placeList(Pager pager,String location,String guest, long guestData, String date, String startDate,String endDate,long adultNum, long childNum, long infantNum, ModelAndView mv) throws Exception{
		PlaceVO placeVO = new PlaceVO();
		//기본키 null방지
		placeVO.setPlaceNum("search"); 
		placeVO.setPlaceLocation(location);
		placeVO.setPlaceMaxGuest(guestData);
		
		BookingVO bookingVO = new BookingVO();
		//기본키 null 방지하기 위해 임시로 값 넣어줌
		bookingVO.setBookingNum("booking test");
		//Date 형식으로 변환 String -> Date
		Date startData = Date.valueOf(startDate);
		Date endData = Date.valueOf(endDate);

		bookingVO.setCheckInDate(startData);
		bookingVO.setCheckOutDate(endData);

		Map<String, Object> map = placeService.placeList(placeVO,pager,bookingVO,guestData);		
		List<PlaceVO> ar = (List<PlaceVO>)map.get("placeList");
		long totalCount = (long)map.get("totalCount");	
		System.out.println("first placeNum: "+ar.get(1).getPlaceNum());
		System.out.println("first fileName: "+ar.get(1).getPlaceFileVO().getFileName());
	
		mv.addObject("list", ar);
		mv.addObject("totalCount", totalCount);
		mv.addObject("pager", pager);
		mv.addObject("location",location);
		mv.addObject("guest",guest);
		mv.addObject("date",date);
		mv.addObject("startDate",startDate);
		mv.addObject("endDate",endDate);
		mv.addObject("guestData", guestData);
		mv.addObject("adultNum", adultNum);
		mv.addObject("childNum", childNum);
		mv.addObject("infantNum", infantNum);
		mv.setViewName("place/placeList");
		return mv;
	}

	@GetMapping("placeSelect")
	public ModelAndView placeSelect(ModelAndView mv, ReviewPager pager,long guestData, String startDate,String endDate, String location, String date, long adultNum, long childNum, long infantNum) throws Exception{
		//placeNum으로 해당 PlaceVO 가져오기 
		String placeNum = pager.getPlaceNum();
		PlaceVO placeVO = placeService.placeSelect(placeNum);	
		
		//리뷰 
		List<ReviewVO> reviewVOs = reviewService.reviewSelect(pager); 
		//리뷰 전체 개수 
		long reviewCnt = reviewService.reviewCount(pager);
		//리뷰 평균 계산 
		float ratingSum = reviewService.ratingSum(pager.getPlaceNum());
		float ratingAvg = ratingSum/reviewCnt;
		
		//amenityKind   
		List<AmenityVO> amenities = amenityService.amenitySelect(placeNum);
		
		//예약 일자 
		List<BookingVO> bookingVOs =  placeService.checkDateSelect(placeNum);
		
		//사진 파일  
		List<PlaceFileVO> placeFileList = placeService.fileList(placeVO);
		long placeFileTotalNum = placeService.fileCount(placeNum);
		MemberFileVO memberFileVO = memberService.fileSelect(placeVO.getMemberNum());
		
		mv.addObject("hostFile", memberFileVO);
		mv.addObject("amenities", amenities);
		mv.addObject("fileTotalNum", placeFileTotalNum);
		mv.addObject("fileList", placeFileList);
		mv.addObject("adultNum", adultNum);
		mv.addObject("childNum", childNum);
		mv.addObject("infantNum", infantNum);
		mv.addObject("date",date);
		mv.addObject("location",location);
		mv.addObject("startDate",startDate);
		mv.addObject("endDate",endDate);
		mv.addObject("guestData", guestData);
		mv.addObject("vo", placeVO);
		mv.addObject("bookingList", bookingVOs);
		mv.addObject("reviewList", reviewVOs);
		mv.addObject("rateAvg", Math.round(ratingAvg*100)/100.0);
		mv.addObject("reviewCnt", reviewCnt);
		mv.addObject("pager", pager);
		mv.setViewName("place/placeSelect");
		return mv;
	}
	
	@GetMapping("getReview")
	public ModelAndView getReview(ReviewPager pager, ModelAndView mv) throws Exception{
		List<ReviewVO> reviews = reviewService.reviewSelect(pager);
		
		long reviewCnt = reviewService.reviewCount(pager);
		System.out.println("curPage: "+pager.getCurPage());
		System.out.println("startNum: "+pager.getStartNum());
		System.out.println("lastNum: "+pager.getLastNum());
		
		mv.addObject("reviewCnt", reviewCnt);
		mv.addObject("pager", pager);
		mv.addObject("reviewList", reviews);
		return mv;
	}
	
	@GetMapping("hostPlaceAdd")
	public void hostPlaceAdd() throws Exception{
		
	}
	
//	@PostMapping("addPlace")
//	public ModelAndView addPlace(Pager pager, ModelAndView mv) throws Exception{
//		if(pager.getCurPage() == 1) {
//			
//		System.out.println("enter Controller");
//		mv.setViewName("./addPlace2");
//		
//		}else if(pager.getCurPage() ==2) {
//			System.out.println(pager.getCurPage());
//		}else {
//			System.out.println(pager.getCurPage());
//		}
//		return mv;
//	}
	
	@PostMapping("addPlace1")
	public void addPlace1() throws Exception{
	}
	
	@PostMapping("addPlace2")
	public ModelAndView addPlace2(PlaceVO placeVO,ModelAndView mv) throws Exception{
		
		mv.addObject("pVo", placeVO);
		mv.setViewName("place/addPlace2");
		
		return mv;
	}
	
	@PostMapping("addPlace3")
	public ModelAndView addPlace3(PlaceVO placeVO, ModelAndView mv) throws Exception{
		mv.addObject("pVo", placeVO);
		mv.setViewName("place/addPlace3");
		
		return mv;
	}
	
	@PostMapping("addPlace4")
	public ModelAndView addPlace4(PlaceVO placeVO, ModelAndView mv) throws Exception{

		int result = placeService.hostPlaceAdd(placeVO);
		
		if(result>0) {
			System.out.println("placeDB연동성공");
		}
		mv.addObject("placeNum", placeVO.getPlaceNum());
		System.out.println(placeVO.getPlaceNum());
		mv.setViewName("place/addPlace4");
		
		return mv;
	}
	
	@PostMapping("addPlaceDone")
	public ModelAndView addPlaceDone(PlaceVO placeVO, ModelAndView mv, MultipartFile[] files) throws Exception{
		System.out.println("이미지 저장하고 들어올곳");
		System.out.println(placeVO.getPlaceNum());
		
		int result = placeService.fileInsert(placeVO.getPlaceNum(), files);
		
		if(result>0) {
			System.out.println("db연동 성공");
		}
		
		mv.setViewName("redirect:../");
		
		return mv;
	}
	
	
}
