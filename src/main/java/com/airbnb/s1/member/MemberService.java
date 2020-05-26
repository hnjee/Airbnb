package com.airbnb.s1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public int memberJoin(MemberVO memberVO) throws Exception{
		return memberDAO.memberJoin(memberVO);
	}
	
	public int joinByGoogle(MemberVO memberVO) throws Exception{
		return memberDAO.memberJoin(memberVO);
	}
	
	public MemberVO memberLogin(MemberVO memberVO) throws Exception{
		return memberDAO.memberLogin(memberVO);
	}
	
	public MemberVO loginByGoogle(MemberVO memberVO) throws Exception{
		return memberDAO.memberLogin(memberVO);
	}
	
}


