package com.airbnb.s1.message;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airbnb.s1.member.MemberVO;

@Service
public class MessageService {
	@Autowired
	private MessageDAO messageDAO;
	
	public int send(MessageVO messageVO) throws Exception{
		
		return messageDAO.send(messageVO);
	}
	
	public List<MemberVO> checkMessage(String memberNum) throws Exception {
		
		return messageDAO.checkMessage(memberNum);
	}
	
	public List<MessageVO> checkMessage_2(String memberNum) throws Exception {
		
		return messageDAO.checkMessage_2(memberNum);
	}
	
	public List<MessageVO> messageWindow(MessageVO messageVO) throws Exception{
		return messageDAO.messageWindow(messageVO);
	}
	
	public List<MessageVO> laterWindow(MessageVO messageVO) throws Exception{
		return messageDAO.laterWindow(messageVO);
	}
	
	public int windowSend(MessageVO messageVO) throws Exception{
		return messageDAO.windowSend(messageVO);
	}

}
