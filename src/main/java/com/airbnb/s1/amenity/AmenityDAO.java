package com.airbnb.s1.amenity;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class AmenityDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.amenity.AmenityDAO.";
	
	public List<AmenityVO> amenitySelect(String placeNum) throws Exception{
		return sqlSession.selectList(NAMESPACE+"amenitySelect", placeNum);	
	}
	
	public int amenityAdd(AmenityVO amenityVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"amenityAdd", amenityVO);
	}
	
}
