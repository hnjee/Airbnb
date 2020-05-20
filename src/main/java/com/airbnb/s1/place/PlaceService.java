package com.airbnb.s1.place;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airbnb.s1.booking.BookingVO;
import com.airbnb.s1.util.Pager;
import com.airbnb.s1.review.ReviewDAO;

@Service
public class PlaceService {

	@Autowired
	private PlaceDAO placeDAO;
	
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
