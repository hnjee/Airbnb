package com.airbnb.s1.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.airbnb.s1.util.Pager;

@Controller
@RequestMapping("/place/**")
public class PlaceController {
	
	@Autowired
	private PlaceService placeService;
	
	@GetMapping("placeList")
	public ModelAndView placeList(Pager pager,String location, String guest, String date, ModelAndView mv) throws Exception{
		PlaceVO placeVO = new PlaceVO();
		placeVO.setPlaceNum("search");
		placeVO.setPlaceLocation(location);
		List<PlaceVO> ar = placeService.placeList(placeVO,pager);
		
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.addObject("location",location);
		mv.addObject("guest",guest);
		mv.addObject("date",date);
		

		mv.setViewName("place/placeList");
		return mv;
	}
	
	

}
