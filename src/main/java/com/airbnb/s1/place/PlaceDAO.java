package com.airbnb.s1.place;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlaceDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.place.PlaceDAO.";
	
	public PlaceVO placeSelect(String placeNum) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"placeSelect", placeNum);
	}
}
