package com.airbnb.s1.house;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HouseService {

	@Autowired
	private HouseDAO houseDAO;
	
}
