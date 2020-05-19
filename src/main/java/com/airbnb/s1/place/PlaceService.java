package com.airbnb.s1.place;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airbnb.s1.review.ReviewDAO;

@Service
public class PlaceService {

	@Autowired
	private PlaceDAO placeDAO;
	
	public PlaceVO placeSelect(String placeNum) throws Exception{
		return placeDAO.placeSelect(placeNum);
	}
}
