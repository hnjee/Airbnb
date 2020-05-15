package com.airbnb.s1.place;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
	@GetMapping("hostPlaceAdd")
	public ModelAndView hostPlaceAdd(int curpage, ModelAndView mv) throws Exception{
		System.out.println("enterController");
		mv.addObject("result", curpage);
		mv.setViewName("ajaxForm/hostPlace"+curpage);
		return mv;
	}
	
}
