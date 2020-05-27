package com.airbnb.s1.message;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageService {
	@Autowired
	private MessageDAO messageDAO;
	
	public int send(MessageVO messageVO) throws Exception{
		
		return messageDAO.send(messageVO);
	}

}
