package com.airbnb.s1.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airbnb.s1.util.Pager;


@Service
public class ReviewService {
	@Autowired
	private ReviewDAO reviewDAO;
	
	public List<ReviewVO> reviewSelect(Pager pager) throws Exception{
		pager.makeRow();
		long totalCount = reviewDAO.reviewCount(pager.getPlaceNum()); //전체글의 개수 가져오기 
		pager.makePage(totalCount);
		
		return reviewDAO.reviewSelect(pager);
	}
	public Long reviewCount(String placeNum) throws Exception{
		return reviewDAO.reviewCount(placeNum);
	}
	public Float ratingSum(String placeNum) throws Exception{
		return reviewDAO.ratingSum(placeNum);
	}
}
