package com.airbnb.s1.place.placeFile;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airbnb.s1.place.PlaceVO;

@Repository
public class PlaceFileDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.place.placeFile.PlaceFileDAO.";	
	
	public int fileInsert(PlaceFileVO placeFileVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"fileInsert", placeFileVO);
	}
	
	public List<PlaceFileVO> fileList(PlaceVO placeVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"fileList", placeVO);
	}

}
