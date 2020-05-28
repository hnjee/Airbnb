package com.airbnb.s1.place;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.airbnb.s1.booking.BookingVO;
import com.airbnb.s1.member.MemberVO;
import com.airbnb.s1.member.memberFile.MemberFileDAO;
import com.airbnb.s1.member.memberFile.MemberFileVO;
import com.airbnb.s1.place.placeFile.PlaceFileDAO;
import com.airbnb.s1.place.placeFile.PlaceFileVO;
import com.airbnb.s1.util.FileSaver;
import com.airbnb.s1.util.Pager;
import com.airbnb.s1.review.ReviewDAO;

@Service
public class PlaceService {

	@Autowired
	private PlaceDAO placeDAO;

	@Autowired 
	private MemberFileDAO memberFileDAO;
	

	//////////////file 이용 시 추가되는 부분
	@Autowired
	private FileSaver fileSaver;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private PlaceFileDAO placeFileDAO;
		
	public int fileInsert(String placeNum,MultipartFile[] files) throws Exception{
		//실제로 저장되는 경로 path
		//로컬로 작동할 때는 임시 폴더 이건 사라지는 폴더, 배포하면 서버에 등록되어 파일 사라지지 않는다.
//		String path = servletContext.getRealPath("/resources/images/place");
		
		//개발 할 때는 이 주소로 저장 (restart하면 사라지지 않게 직접 저장) -> 계속 파일 저장해놔야하니까

		String path="C:\\hj\\workspace\\Airbnb\\src\\main\\webapp\\resources\\images\\place";
		System.out.println("실제 경로: "+path);
		
		int res = 0;
		
		//들어온 files를 반복문으로 하나씩 삽입
		for(MultipartFile file:files) {
			if(file.getSize()>0) {
				PlaceFileVO placeFileVO = new PlaceFileVO();
				String fileName = fileSaver.saveByTransfer(file,path);			
				placeFileVO.setPlaceNum(placeNum);
				placeFileVO.setFileName(fileName);
				placeFileVO.setOriName(file.getOriginalFilename());
				res = placeFileDAO.fileInsert(placeFileVO);
			}	
		}
		return res;
	}
	
	//placeNum으로 placeFileVO 리스트를 가져오는 메서드 fileList()
	public List<PlaceFileVO> fileList(PlaceVO placeVO) throws Exception{
		return placeFileDAO.fileList(placeVO);	
	}
	
	//placeNum으로 placeFileVO 개수를 가져오는 메서드
	public long fileCount(String placeNum) throws Exception{
		return placeFileDAO.fileCount(placeNum);
	}
	
	///////////////추가 끝

	public Map placeList(PlaceVO placeVO, Pager pager,BookingVO bookingVO,long guestData) throws Exception {
		pager.makeRow();
		Map<String, Object> map  = new HashMap<String, Object>();
		map.put("placeVO", placeVO);
		map.put("bookingVO",bookingVO);
		map.put("pager", pager);
		map.put("guestData", guestData);
		long totalCount = placeDAO.placeCount(map);
		
		//받아온 fileNum의 배열을 이용해서
		//List<PlaceVO>로 받아오기
		List<String> selectedFileNum = placeDAO.selectFileNum(map);
		pager.makePage(totalCount);	
		Map<String, Object> map2 = new HashMap<String, Object>();		
		map2.put("placeList", placeDAO.placeList(selectedFileNum));
		map2.put("totalCount", totalCount);
		
		
		return map2;
	}
	
	
	public long placeCount(Map map) throws Exception{
		return placeDAO.placeCount(map);		
	}
	
	public PlaceVO placeSelect(String placeNum) throws Exception{
		return placeDAO.placeSelect(placeNum);
	}
	
	public List<BookingVO> checkDateSelect(String placeNum) throws Exception{
		return placeDAO.checkDateSelect(placeNum);
	}
	
	public int hostPlaceAdd(PlaceVO placeVO) throws Exception{
		int result = placeDAO.hostPlaceAdd(placeVO);
		System.out.println(placeVO.getPlaceNum());
		
		return result;
	}
	
	public List<PlaceVO> myPlace(MemberVO memberVO) throws Exception{
		return placeDAO.myPlace(memberVO);
	}
	
	public int placeUpdate(PlaceVO placeVO) throws Exception{

		int result = 0;
		
		if(placeVO.getUpdateNum()==1) {
			result = placeDAO.placeUpdate1(placeVO);
		}else if(placeVO.getUpdateNum()==2) {
			result = placeDAO.placeUpdate2(placeVO);
		}else if(placeVO.getUpdateNum()==3) {
			result = placeDAO.placeUpdate3(placeVO);
		}else if(placeVO.getUpdateNum()==4) {
			result = placeDAO.placeUpdate4(placeVO);
		}else if(placeVO.getUpdateNum()==5) {
			result = placeDAO.placeUpdate5(placeVO);
		}else if(placeVO.getUpdateNum()==6) {
			result = placeDAO.placeUpdate6(placeVO);
		}else if(placeVO.getUpdateNum()==7) {
			result = placeDAO.placeUpdate7(placeVO);
		}else if(placeVO.getUpdateNum()==8) {
			result = placeDAO.placeUpdate8(placeVO);
		}else if(placeVO.getUpdateNum()==9) {
			result = placeDAO.placeUpdate9(placeVO);
		}
		
		return result;


	}
	
	
	
	
}
