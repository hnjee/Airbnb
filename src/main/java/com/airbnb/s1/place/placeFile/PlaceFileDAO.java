package com.airbnb.s1.place.placeFile;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlaceFileDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.place.placeFile.PlaceFileDAO.";	
	
	public int fileInsert(PlaceFileVO placeFileVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"fileInsert", placeFileVO);
	}
	

}
