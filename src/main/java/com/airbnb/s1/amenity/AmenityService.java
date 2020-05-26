package com.airbnb.s1.amenity;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AmenityService {
	@Autowired
	private AmenityDAO amenityDAO;
	
	public List<Long> amenitySelect(String placeNum) throws Exception{
		return amenityDAO.amenitySelect(placeNum);
	}
}
