package com.airbnb.s1.member.memberFile;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberFileDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.member.memberFile.MemberFileDAO.";
	
	public int fileInsert(MemberFileVO memberFileVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"fileInsert", memberFileVO);
	}
	
	

}
