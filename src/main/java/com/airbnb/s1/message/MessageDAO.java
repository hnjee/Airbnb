package com.airbnb.s1.message;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.airbnb.s1.message.MessageDAO.";
	
	public int send(MessageVO messageVO) throws Exception {
		return sqlSession.insert(NAMESPACE+"send", messageVO);
	}
	
	public List<MessageVO> checkMessage(String memberNum) throws Exception{
		return sqlSession.selectList(NAMESPACE+"checkMessage", memberNum);
	}
	
	public List<MessageVO> checkMessage_2(String memberNum) throws Exception{
		return sqlSession.selectList(NAMESPACE+"checkMessage_2", memberNum);
	}
	
	public List<MessageVO> messageWindow(MessageVO messageVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"messageWindow", messageVO);
	}
}
