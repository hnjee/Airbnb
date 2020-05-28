package com.airbnb.s1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;

import com.airbnb.s1.member.memberFile.MemberFileDAO;
import com.airbnb.s1.member.memberFile.MemberFileVO;
import com.airbnb.s1.place.placeFile.PlaceFileVO;
import com.airbnb.s1.util.FileSaver;


@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private MemberFileDAO memberFileDAO;
	@Autowired
	private FileSaver fileSaver;
	
	

	public int memberJoin(MemberVO memberVO) throws Exception{
		return memberDAO.memberJoin(memberVO);
	}

	public int joinByGoogle(MemberVO memberVO) throws Exception{
		return memberDAO.joinByGoogle(memberVO);
	}

	public MemberVO memberLogin(MemberVO memberVO) throws Exception{
		return memberDAO.memberLogin(memberVO);
	}

	public MemberVO loginByGoogle(MemberVO memberVO) throws Exception{
		return memberDAO.loginByGoogle(memberVO);
	}
	
	public int fileInsert(String memberNum, MultipartFile file) throws Exception{
		String path="C:\\hj\\workspace\\Airbnb\\src\\main\\webapp\\resources\\images\\member";		
		System.out.println("실제 저장 경로: "+path);
		
		int res = 0;
		if(file.getSize()>0) {
			MemberFileVO memberFileVO = new MemberFileVO();
			String fileName = fileSaver.saveByTransfer(file,path);			
			memberFileVO.setMemberNum(memberNum);
			memberFileVO.setFileName(fileName);
			memberFileVO.setOriName(file.getOriginalFilename());
			res = memberFileDAO.fileInsert(memberFileVO);
		}
		return res;
	}
	
	//memberNum으로 MemberFileVO를 가져오는 메서드 fileOne()
	public MemberFileVO fileSelect(String memberNum) throws Exception{
		return memberFileDAO.fileSelect(memberNum);	
	}
		
	public int memberUpdate(MemberVO memberVO) throws Exception{
		int result = 0;
		if(memberVO.getHostDesc()=="1") {
			result = memberDAO.memberUpdate1(memberVO);
		}else if(memberVO.getHostDesc()=="2") {
			result = memberDAO.memberUpdate2(memberVO);
		}else if(memberVO.getHostDesc()=="3") {
			result = memberDAO.memberUpdate3(memberVO);
		}else if(memberVO.getHostDesc()=="4") {
			result = memberDAO.memberUpdate4(memberVO);
		}
		return result;
	}
	
}
