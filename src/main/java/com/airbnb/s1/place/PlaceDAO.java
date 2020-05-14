package com.airbnb.s1.place;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class PlaceDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.place.PlaceDAO.";
	
	public List<PlaceVO> placeList(Map map) throws Exception{
		return sqlSession.selectList(NAMESPACE+"placeList",map);	
	}
	
	public long placeCount(PlaceVO placeVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"placeCount",placeVO);
	}
	
	
}
