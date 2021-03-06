package com.airbnb.s1.booking;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookingDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.airbnb.s1.booking.BookingDAO.";
	
	
	public BookingVO bookingSelect(BookingVO bookingVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"bookingSelect", bookingVO);
	}
	
	public int bookingEx(BookingVO bookingVO) throws Exception {
		
		return sqlSession.insert(NAMESPACE+"booking", bookingVO );
	}
	
	public int payment(BookingVO bookingVO) throws Exception {
		return sqlSession.update(NAMESPACE+"payment", bookingVO);
	}
	
	public List<BookingVO> notYet(BookingVO bookingVO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"notYet", bookingVO);
	}
	
	public List<BookingVO> already(BookingVO bookingVO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"already", bookingVO);
	}
	
	public int outRoom(BookingVO bookingVO) throws Exception {
		
		return sqlSession.update(NAMESPACE+"outRoom", bookingVO);
	}
	
	public BookingVO bookingResult(String bookingNum) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"bookingResult", bookingNum);
	}
	
	public int afterReview(String bookingNum) throws Exception {
		
		return sqlSession.update(NAMESPACE+"afterReview", bookingNum);
	}
}
