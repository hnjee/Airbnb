package com.airbnb.s1.house;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HouseDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.house.HouseDAO.";
	
	
	
}
