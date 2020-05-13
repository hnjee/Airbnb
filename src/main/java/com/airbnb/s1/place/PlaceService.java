package com.airbnb.s1.place;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlaceService {

	@Autowired
	private PlaceDAO placeDAO;
	
	public PlaceVO placeSelect(String num) throws Exception{
		return placeDAO.placeSelect(num);
	}
}
