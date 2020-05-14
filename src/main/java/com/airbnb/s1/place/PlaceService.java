package com.airbnb.s1.place;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airbnb.s1.util.Pager;

@Service
public class PlaceService {

	@Autowired
	private PlaceDAO placeDAO;
	
	public List<PlaceVO> placeList(PlaceVO placeVO, Pager pager) throws Exception {
		pager.makeRow();
		Map<String, Object> map  = new HashMap<String, Object>();
		long totalCount = placeDAO.placeCount(placeVO);
		pager.makePage(totalCount);
		map.put("placeVO", placeVO);
		map.put("pager", pager);
		
		return placeDAO.placeList(map);
	}
	
}
