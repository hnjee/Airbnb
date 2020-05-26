package com.airbnb.s1.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.member.MemberDAO.";
	
	public int memberJoin(MemberVO memberVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"memberJoin", memberVO);
	}
	
	public MemberVO memberLogin(MemberVO memberVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"memberLogin", memberVO);
	}
	
}
