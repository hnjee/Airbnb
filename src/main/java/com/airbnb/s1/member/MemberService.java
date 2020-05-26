package com.airbnb.s1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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
		String path="C:\\workspaceSpring\\Airbnb\\src\\main\\webapp\\resources\\images\\member";
		
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
		System.out.println("Save,,");
		return res;
	}
	
	

}
