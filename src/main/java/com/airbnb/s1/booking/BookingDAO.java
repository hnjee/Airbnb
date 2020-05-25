package com.airbnb.s1.booking;

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


}
