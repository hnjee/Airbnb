package com.airbnb.s1.place.placeFile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/placeFile/**")
public class PlaceFileController {
	
	@Autowired
	private PlaceFileService placeFileService;
	
	//fileDown은 jsp에서 누르면 사진 파일 다운로드 받는 기능 구현하는 것
	public ModelAndView fileDown(PlaceFileVO placeFileVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("fileDown");
		return mv;
	}
	
	
}
