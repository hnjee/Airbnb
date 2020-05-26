package com.airbnb.s1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;

	public int memberJoin(MemberVO memberVO) throws Exception{
		return memberDAO.memberJoin(memberVO);
	}

	public int joinByGoogle(MemberVO memberVO) throws Exception{
		return memberDAO.joinByGoogle(memberVO);
	}

	public MemberVO memberLogin(MemberVO memberVO) throws Exception{
		return memberDAO.memberLogin(memberVO);
	}

	public ModelAndView loginByGoogle(MemberVO memberVO, ModelAndView mv) throws Exception{
		String result= "null";
		memberVO = memberDAO.loginByGoogle(memberVO);
		if(memberVO != null) {
			mv.addObject(result, "true");
			mv.setViewName(memberVO);
		}
		return mv;
	}

}
