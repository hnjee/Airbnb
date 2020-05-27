package com.airbnb.s1.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airbnb.s1.util.Pager;
import com.airbnb.s1.util.ReviewPager;

@Repository
public class ReviewDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.review.ReviewDAO.";
	
	public List<ReviewVO> reviewSelect(ReviewPager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"reviewSelect", pager);
	}
	
	public Long reviewCount(ReviewPager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"reviewCount", pager);
	}
	
	public Float ratingSum(String placeNum) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"ratingSum", placeNum);
	}
	
	public int reviewInsert(ReviewVO reviewVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"reviewInsert", reviewVO);
	}
	
}