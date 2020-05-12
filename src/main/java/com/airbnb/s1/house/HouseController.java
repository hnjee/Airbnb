package com.airbnb.s1.house;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/house/**")
public class HouseController {
	
//	@Autowired
//	private HouseService houseService;
	
	@GetMapping("houseList")
	public void houseList() throws Exception{

	}
	
	@GetMapping("houseSelect")
	public void houseSelect() throws Exception{
		
	}

}
