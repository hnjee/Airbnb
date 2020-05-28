package com.airbnb.s1.message;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.airbnb.s1.booking.BookingVO;
import com.airbnb.s1.member.MemberService;

import com.airbnb.s1.member.memberFile.MemberFileVO;
import com.airbnb.s1.place.PlaceService;
import com.airbnb.s1.place.PlaceVO;

@Controller
@RequestMapping(value="/message/**")
public class MessageController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private MessageService messageService;
	@Autowired
	private PlaceService placeService;

	
	
	@RequestMapping(value="send", method=RequestMethod.GET)
	public ModelAndView sendMessage(ModelAndView mv, MessageVO messageVO) throws Exception{
		
		MemberFileVO memberFileVO = memberService.fileSelect(messageVO.getR_memberNum());
		PlaceVO placeVO = placeService.placeSelect(messageVO.getPlaceNum());
		
		mv.addObject("vo", placeVO);
		mv.addObject("host", messageVO);
		mv.addObject("hostFile", memberFileVO);
		mv.setViewName("booking/sendMessage");
		return mv;
	}
	
	@RequestMapping(value = "send", method=RequestMethod.POST)
	public String send(MessageVO messageVO) throws Exception{
		messageService.send(messageVO);
		
		return "redirect:../";
	}
	
	@RequestMapping(value="checkMessage")
	public ModelAndView checkMessage(ModelAndView mv, String memberNum) throws Exception {
		
		List<MessageVO> ar = messageService.checkMessage(memberNum);
		
		mv.addObject("memberNum", memberNum);
		mv.addObject("list", ar);
		
		mv.setViewName("booking/checkMessage");
		return mv;
	}
	
	@RequestMapping(value="receiveWho", method = RequestMethod.POST)
	public ModelAndView already(ModelAndView mv, String memberNum) throws Exception {
		List<MessageVO> arr = messageService.checkMessage_2(memberNum);
		
		mv.addObject("list", arr);
		mv.setViewName("jsp/message");
		return mv;
	}
	@RequestMapping(value="sendWho", method = RequestMethod.POST)
	public ModelAndView notYet(ModelAndView mv, String memberNum) throws Exception {
		List<MessageVO> ar = messageService.checkMessage(memberNum);
		
		mv.addObject("list", ar);
		mv.setViewName("jsp/messageWho");
		return mv;
	}
	
	@RequestMapping(value="messageWindow", method = RequestMethod.POST)
	public ModelAndView messageWindow(ModelAndView mv, MessageVO messageVO) throws Exception {

		List<MessageVO> ar = messageService.messageWindow(messageVO);
		MemberFileVO memberFileVO = memberService.fileSelect(messageVO.getR_memberNum());
		MemberFileVO memberFileVOs = memberService.fileSelect(messageVO.getS_memberNum());
		
		mv.addObject("hostFile", memberFileVOs);
		mv.addObject("myFile", memberFileVO);
		mv.addObject("list", ar);
		mv.addObject("memberNum", messageVO);
		mv.setViewName("jsp/messageWindow");
		return mv;
	}
}
