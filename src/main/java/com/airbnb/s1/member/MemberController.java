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
	
	@GetMapping("memberJoin")
	public ModelAndView memberJoin(ModelAndView mv, MemberVO memberVO, HttpSession session) throws Exception{
		System.out.println("memberJoin enter");
		System.out.println(memberVO.getEmail());
		System.out.println(memberVO.getName());
		System.out.println(memberVO.getFname());
		System.out.println(memberVO.getPw());
		
		session.setAttribute("member", memberVO);
		
		int result = memberService.memberJoin(memberVO);
		if(result >0) {
			System.out.println("DB생성 성공");
		}else {
			System.out.println("실패");
		}
		mv.addObject("memberEmail", memberVO.getEmail());
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@GetMapping("googleLogin")
	public String googleLogin(MemberVO memberVO, HttpSession session, ModelAndView mv) throws Exception{
		session.setAttribute("member", memberVO);
		System.out.println(memberVO.getEmail());
		System.out.println(memberVO.getName());
		System.out.println(memberVO.getFname());
		System.out.println(memberVO.getPw());
		return "redirect:../";
	}
	
	
	@GetMapping("memberLogout")
	public String memberLogout(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:../";
	}
	
	
	@GetMapping("memberLogin")
	public void memberLogin() throws Exception{
		System.out.println("컨트롤러1");
	}
	
	@PostMapping("memberLogin")
	public ModelAndView memberLogin(ModelAndView mv, MemberVO memberVO) throws Exception{
		System.out.println("컨트롤러2");
		int result = memberService.memberLogin(memberVO);
		System.out.println(result);
		mv.setViewName("../");
		
		return mv;
	}
}
