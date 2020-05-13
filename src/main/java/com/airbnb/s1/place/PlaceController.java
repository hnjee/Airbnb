package com.airbnb.s1.place;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/place/**")
public class PlaceController {
//	@Autowired
//	private PlaceService placeService;
	
	@GetMapping("placeList")
	public void placeList() throws Exception{

	}
	@GetMapping("placeSelect")
	public void placeSelect() throws Exception{
		
	}

}
