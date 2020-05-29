package com.airbnb.s1.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airbnb.s1.place.PlaceVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.airbnb.s1.member.MemberDAO.";

	public int memberJoin(MemberVO memberVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"memberJoin", memberVO);
	}

	public int joinByGoogle(MemberVO memberVO) throws Exception{
		System.out.println("joinByGoogle");
		return sqlSession.insert(NAMESPACE+"joinByGoogle", memberVO);
	}
	
	public MemberVO memberLogin(MemberVO memberVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"memberLogin", memberVO);
	}

	public MemberVO loginByGoogle(MemberVO memberVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"loginByGoogle", memberVO);
	}

	public int memberUpdate1(MemberVO memberVO) throws Exception{
		return sqlSession.update(NAMESPACE+"memberUpdate1", memberVO);
	}
	
	public int memberUpdate2(MemberVO memberVO) throws Exception{
		return sqlSession.update(NAMESPACE+"memberUpdate2", memberVO);
	}
	
	public int memberUpdate3(MemberVO memberVO) throws Exception{
		return sqlSession.update(NAMESPACE+"memberUpdate3", memberVO);
	}
	
	public int memberUpdate4(MemberVO memberVO) throws Exception{
		return sqlSession.update(NAMESPACE+"memberUpdate4", memberVO);
	}
	
	public int memberDelete(String memberNum) throws Exception{
		return sqlSession.delete(NAMESPACE+"memberDelete",memberNum);
	}
	
	public String googleIdCheck(MemberVO memberVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"googleIdCheck", memberVO);
	}

	public int googleJoin(MemberVO memberVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"googleJoin", memberVO);
	}
	
}
