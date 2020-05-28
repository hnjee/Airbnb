package com.airbnb.s1.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.airbnb.s1.member.MemberVO;

public class MemberInterceptor extends HandlerInterceptorAdapter{

//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//			throws Exception {
//		boolean check = false;
//		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
//		
//		if(memberVO!=null) {
//			System.out.println("Log In--");
//			check = true;
//		} else {
//			System.out.println("Log Out--");
//			request.setAttribute("result", "로그인은 필수");
//			request.setAttribute("path", "./memberLogin");
//			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/result.jsp");
//			view.forward(request, response);
//		}
//		return check;
//	}

	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HttpSession session = request.getSession();
		boolean check = false;
		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		if(memberVO!=null) {
			session.setAttribute("member", memberVO);
			session.setAttribute("check", check);
		}
		
		
		
	}
	
	
	
	
	
}
