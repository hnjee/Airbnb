package com.airbnb.s1.place;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.airbnb.s1.booking.BookingVO;
import com.airbnb.s1.place.placeFile.PlaceFileDAO;
import com.airbnb.s1.place.placeFile.PlaceFileVO;
import com.airbnb.s1.util.FileSaver;
import com.airbnb.s1.util.Pager;
import com.airbnb.s1.review.ReviewDAO;

@Service
public class PlaceService {

	@Autowired
	private PlaceDAO placeDAO;
	
	
	
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
		String path="C:\\workspace\\Airbnb\\src\\main\\webapp\\resources\\images\\place";
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
	
	
	///////////////추가 끝
	
	
	
	
	
	public Map placeList(PlaceVO placeVO, Pager pager,BookingVO bookingVO,long guestData) throws Exception {
		pager.makeRow();
		Map<String, Object> map  = new HashMap<String, Object>();
		map.put("placeVO", placeVO);
		map.put("bookingVO",bookingVO);
		map.put("pager", pager);
		map.put("guestData", guestData);
		long totalCount = placeDAO.placeCount(map);

		pager.makePage(totalCount);	
		Map<String, Object> map2 = new HashMap<String, Object>();		
		map2.put("placeList", placeDAO.placeList(map));
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
	
	
}
