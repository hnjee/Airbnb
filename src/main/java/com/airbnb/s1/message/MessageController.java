package com.airbnb.s1.message;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/message/**")
public class MessageController {
	@Autowired
	private MessageService messageService;
	
	@RequestMapping(value="send", method=RequestMethod.GET)
	public ModelAndView sendMessage(ModelAndView mv, MessageVO messageVO) throws Exception{
	
		mv.addObject("host", messageVO);
		
		mv.setViewName("booking/sendMessage");
		return mv;
	}
	
	@RequestMapping(value = "send", method=RequestMethod.POST)
	public String send(MessageVO messageVO) throws Exception{
		messageService.send(messageVO);
		
		return "redirect:../";
	}
}
