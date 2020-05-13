package com.airbnb.s1.place;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/place/**")
public class PlaceController {
	@Autowired
	private PlaceService placeService;
	
	@GetMapping("placeList")
	public ModelAndView placeList(ModelAndView mv) throws Exception{
		mv.setViewName("place/placeList");
		return mv;
	}

	@GetMapping("placeSelect")
	public ModelAndView placeSelect(String num, ModelAndView mv) throws Exception{
		PlaceVO placeVO = placeService.placeSelect(num);
		System.out.println("hello: "+placeVO.getHostNum());
		mv.addObject("vo", placeVO);
		mv.setViewName("place/placeSelect");
		return mv;
	}
}
