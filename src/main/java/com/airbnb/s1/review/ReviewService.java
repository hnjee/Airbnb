package com.airbnb.s1.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airbnb.s1.util.Pager;
import com.airbnb.s1.util.ReviewPager;

@Service
public class ReviewService {
	@Autowired
	private ReviewDAO reviewDAO;
	
	public List<ReviewVO> reviewSelect(ReviewPager pager) throws Exception{
		pager.makeRow();
		long totalCount = reviewDAO.reviewCount(pager); //전체글의 개수 가져오기 
		pager.makePage(totalCount);
		return reviewDAO.reviewSelect(pager);
	}
	public Long reviewCount(ReviewPager pager) throws Exception{
		return reviewDAO.reviewCount(pager);
	}
	public Float ratingSum(String placeNum) throws Exception{
		return reviewDAO.ratingSum(placeNum);
	}
	public int reviewInsert(ReviewVO reviewVO) throws Exception{
		return reviewDAO.reviewInsert(reviewVO);
	}
	
}
