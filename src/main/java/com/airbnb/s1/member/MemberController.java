package com.airbnb.s1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.airbnb.s1.member.memberFile.MemberFileVO;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@PostMapping("memberJoin")
	public ModelAndView memberJoin(ModelAndView mv, MemberVO memberVO, HttpSession session) throws Exception {

		int result = memberService.memberJoin(memberVO);
		memberVO = memberService.memberLogin(memberVO);
		System.out.println(result);
		if (result > 0) {
			System.out.println("DB생성 성공");
		} else {
			System.out.println("실패");
		}

		mv.setViewName("redirect:../");
		session.setAttribute("member", memberVO);
		return mv;
	}

	@GetMapping("googleLogin")
	public String googleLogin(MemberVO memberVO, HttpSession session) throws Exception {
//		int reuslt = 0;
//		
//		String email = memberVO.getEmail();
//		String name = memberVO.getName();
//		String familyName= memberVO.getFamilyName();
//				
//		System.out.println(memberVO.getEmail());
//		System.out.println(memberVO.getFamilyName());
//		System.out.println(memberVO.getName());
//		
//		
//		if(memberVO.getEmail() == "null") {
//			System.out.println("구글 아이디로 회원가입 안되어있음");
//			memberVO.setEmail(email);
//			memberVO.setName(name);
//			memberVO.setFamilyName(familyName);
//			System.out.println(memberVO.getEmail());
//			System.out.println(memberVO.getName());
//			System.out.println(memberVO.getFamilyName());
//			reuslt = memberService.joinByGoogle(memberVO);
//			System.out.println("구글아이디로 회원가입 되었음");
//		}
//		
//		System.out.println("ok");
		
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
		}
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
	
	
	@GetMapping("memberFileView")
	public ModelAndView memberFileView(ModelAndView mv, String memberNum) throws Exception{
		//VO받아오는 서비스 등록하기!!!
		MemberFileVO memberFileVO = memberService.fileList(memberNum);
		mv.addObject("file", memberFileVO);
		return mv;
	}
	
	@PostMapping("memberFileInsert")
	public void memberFileInsert(String memberNum, MultipartFile file) throws Exception{
		MemberFileVO memberFileVO = new MemberFileVO();
		memberFileVO.setMemberNum(memberNum);
		memberService.fileInsert(memberNum, file);
	}
	
	@GetMapping("memberFileInsert")
	public void memberFileInsert() throws Exception{
		
	}
	

}
