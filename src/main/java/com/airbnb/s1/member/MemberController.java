package com.airbnb.s1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@PostMapping("memberJoin")
	public ModelAndView memberJoin(ModelAndView mv, MemberVO memberVO, HttpSession session) throws Exception {

		session.setAttribute("member", memberVO);

		int result = memberService.memberJoin(memberVO);

		System.out.println(result);
		if (result > 0) {
			System.out.println("DB생성 성공");
		} else {
			System.out.println("실패");
		}

		return mv;
	}

	@GetMapping("googleLogin")
	public String googleLogin(MemberVO memberVO, HttpSession session) throws Exception {

		memberVO = memberService.loginByGoogle(memberVO);


		session.setAttribute("member", memberVO);

		return "redirect:../";

	}

	@GetMapping("memberLogout")
	public String memberLogout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:../";
	}

	@PostMapping("memberLogin")
	public ModelAndView memberEnter(MemberVO memberVO, ModelAndView mv, HttpSession session) throws Exception {
		memberVO = memberService.memberLogin(memberVO);

		mv.setViewName("./common/result");
		if (memberVO != null) {
			session.setAttribute("member", memberVO);
			mv.addObject("result", "로그인 성공");
			mv.addObject("path", "../");
			System.out.println("로그인 성공");
		} else {
			mv.addObject("result", "로그인 실패");
			mv.addObject("path", "../");

		if(memberVO.getMemberNum() != null) {
			session.setAttribute("member", memberVO);
		}

		return mv;
	}

	@GetMapping("memberMyPage")
	public ModelAndView memberMyPage(ModelAndView mv) throws Exception {
		mv.setViewName("member/testMyPage");
		return mv;
	}

}
