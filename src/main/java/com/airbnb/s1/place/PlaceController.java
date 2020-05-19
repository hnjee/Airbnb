package com.airbnb.s1.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView placeList(ModelAndView mv) throws Exception{
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
