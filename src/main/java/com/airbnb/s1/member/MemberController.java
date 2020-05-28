package com.airbnb.s1.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.airbnb.s1.member.memberFile.MemberFileVO;
import com.airbnb.s1.place.PlaceService;
import com.airbnb.s1.place.PlaceVO;
import com.airbnb.s1.place.placeFile.PlaceFileVO;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@Autowired
	private PlaceService placeService;
	
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
		
		//멤버 프로필사진 초기화하기
		memberService.fileInsert(memberVO.getMemberNum());

		
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
			mv.setViewName("redirect:../");
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
		
		mv.setViewName("member/memberMyPage");
		return mv;
	}
	
	
	@GetMapping("memberFileView")
	public ModelAndView memberFileView(ModelAndView mv, String memberNum) throws Exception{
		//VO받아오는 서비스 등록하기!!!
		MemberFileVO memberFileVO = memberService.fileSelect(memberNum);
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
	
	@GetMapping("memberUpdate")
	public void memberUpdate(MemberVO memberVO, ModelAndView mv, HttpSession session) throws Exception{
		memberVO=(MemberVO)session.getAttribute("member");
		MemberFileVO memberFileVO = memberService.fileSelect(memberVO.getMemberNum());
		session.setAttribute("file", memberFileVO);
	}
	
	@PostMapping("memberUpdate")
	public String memberUpdate(MemberVO memberVO, HttpSession session, MultipartFile file) throws Exception{		
		String name = memberVO.getName();
		String familyName= memberVO.getFamilyName();
		String email = memberVO.getEmail();
		String pw = memberVO.getPw();
		String phoneNum = memberVO.getPhoneNum();
		
		memberVO=(MemberVO)session.getAttribute("member");
		
		String hostDesc = memberVO.getHostDesc();

		
		if(name !=null || familyName !=null) {
			memberVO.setName(name);
			memberVO.setFamilyName(familyName);
			memberVO.setHostDesc("1");
			int result = memberService.memberUpdate(memberVO);
			memberVO.setHostDesc(hostDesc);
			System.out.println("변경 성공1");
		}else if(email != null){
			System.out.println(email);
			memberVO.setEmail(email);
			memberVO.setHostDesc("2");
			memberService.memberUpdate(memberVO);
			memberVO.setHostDesc(hostDesc);
			System.out.println("변경 성공2");
		}else if(pw != null) {
			System.out.println(pw);
			memberVO.setPw(pw);
			memberVO.setHostDesc("3");
			memberService.memberUpdate(memberVO);
			memberVO.setHostDesc(hostDesc);
			System.out.println("변경 성공3");
		}else if(phoneNum != null) {
			System.out.println(phoneNum);
			memberVO.setPhoneNum(phoneNum);
			memberVO.setHostDesc("4");
			memberService.memberUpdate(memberVO);
			memberVO.setHostDesc(hostDesc);
			System.out.println("변경 성공4");
		}
		
		//멤버 파일 
		memberService.fileUpdate(memberVO.getMemberNum(), file, session);
		MemberFileVO memberFileVO = memberService.fileSelect(memberVO.getMemberNum());
		session.setAttribute("file", memberFileVO);
		
		session.setAttribute("member", memberVO);
		return "redirect:./memberUpdate";
	}
	
	
	@GetMapping("placeUpdate")
	public ModelAndView placeUpdate(MemberVO memberVO,PlaceVO placeVO, HttpSession session,ModelAndView mv) throws Exception{
		PlaceFileVO placeFileVO = new PlaceFileVO();
		memberVO=(MemberVO)session.getAttribute("member");
<<<<<<< HEAD
		System.out.println(memberVO.getMemberNum());
		
		List<PlaceVO> placeVOs = placeService.myPlace(memberVO);
		placeVO = placeVOs.get(0);
		System.out.println(placeVO.getPlaceNum());
		List<PlaceFileVO> placeFileList = placeService.fileList(placeVO);
		
//		placeFileVO = placeFileList.get(0);
//		System.out.println(placeFileVO.getFileName());
		
		System.out.println(placeVO.getPlaceNum());
			mv.addObject("list", placeVOs);
			mv.addObject("file", placeFileList);
			
			mv.setViewName("member/placeUpdate");
			
			return mv;
=======
		
		List<PlaceVO> placeVOs = placeService.myPlace(memberVO);
		
		placeVO = placeVOs.get(0);
		
		mv.addObject("list", placeVOs);
		mv.setViewName("member/placeUpdate");
		return mv;
		
>>>>>>> parent of 88d4ffc... Merge branch 'master' of https://github.com/hnjee/Airbnb
	}
	
	@GetMapping("placeEdit")
<<<<<<< HEAD
	public void placeEdit() throws Exception{
		
	}
	
	@GetMapping("memberDelete")
	public ModelAndView memberDelete(HttpSession session, ModelAndView mv) throws Exception{
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		int res = memberService.memberDelete(memberVO.getEmail()); 
		String msg="Delete Fail";
		if(res>0) {
			msg = "Delete Success"; 
			session.invalidate();
		} 
		mv.addObject("result",msg);
		mv.addObject("path", "../");
		mv.setViewName("common/result");
		return mv;
	}
=======
	public ModelAndView placeEdit(PlaceVO placeVO, ModelAndView mv) throws Exception{
		mv.addObject("place", placeVO);
		mv.setViewName("member/placeEdit");
		
		return mv;
	}
	
	@PostMapping("placeEdit")
	public String placeEdit(PlaceVO placeVO, HttpSession session) throws Exception{
//		System.out.println(placeVO.getMemberNum());
//		System.out.println(placeVO.getPlaceNum());
//		System.out.println(placeVO.getPlaceName());
//		System.out.println(placeVO.getPlaceLocation());
//		
//		System.out.println(placeVO.getPlacePrice());
//		
//		System.out.println(placeVO.getPlaceType());
//		
//		System.out.println(placeVO.getPlaceMaxGuest());
//		
//		System.out.println(placeVO.getPlaceDesc());
//		
//		System.out.println(placeVO.getPlaceRule());
//		
//		System.out.println(placeVO.getBed());
//		System.out.println(placeVO.getBathroom());
//		
//		System.out.println(placeVO.getCheckInTime());
//		System.out.println(placeVO.getCheckOutTime());
//		
		if(placeVO.getPlaceName() !=null) {
			memberVO.setFamilyName(familyName);
			memberVO.setHostDesc("1");
			int result = memberService.memberUpdate(memberVO);
			memberVO.setHostDesc(hostDesc);
			System.out.println("변경 성공1");
		}else if(placeVO.getPlaceLocation() != null){
			System.out.println(email);
			memberVO.setEmail(email);
			memberVO.setHostDesc("2");
			memberService.memberUpdate(memberVO);
			memberVO.setHostDesc(hostDesc);
			System.out.println("변경 성공2");
		}else if(placeVO.getPlacePrice() != null) {
			System.out.println(pw);
			memberVO.setPw(pw);
			memberVO.setHostDesc("3");
			memberService.memberUpdate(memberVO);
			memberVO.setHostDesc(hostDesc);
			System.out.println("변경 성공3");
		}else if(placeVO.getPlaceMaxGuest() != null) {
			System.out.println("변경 성공4");
		}else if(placeVO.getPlaceDesc() != null) {
			System.out.println("변경 성공5");
		}else if(placeVO.getPlaceRule() != null) {
			System.out.println("변경 성공6");
		}else if(placeVO.getBed() != null || placeVO.getBathroom() != null) {
			System.out.println("변경 성공7");
		}else if(placeVO.getCheckInTime() != null || placeVO.getCheckOutTime() != null) {
			System.out.println("변경 성공8");
		}
		
		
		return "./";
		
	}
	
>>>>>>> parent of 88d4ffc... Merge branch 'master' of https://github.com/hnjee/Airbnb
}
