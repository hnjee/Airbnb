package com.airbnb.s1.message;

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
}
