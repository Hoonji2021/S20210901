package com.han.S20210901.service;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class EmpStateInterceptor implements HandlerInterceptor {
	//by 지훈, 회원 등급이 직원 or 관리자일경우
	public List empNeed = Arrays.asList("/punch*", "/empOperation","/Member*","/Emp*", "/makeAReservationOperation", "/reservationOperationCalendar","/clinic*");
	//by 지훈, 회원 등급이 일반 회원의 경우
	public List empNoNeed = Arrays.asList("/main");
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		System.out.println("EmpStateInterceptor preHandle starts...");
		//Integer state = 0;
		String state = null;
		// by 지훈, 파라미터를 받아 세션 객체로 넣어준다.
		
		if(request.getSession().getAttribute("sessionState")!=null) {
			state = (String)request.getSession().getAttribute("sessionState"); // by 지훈, 새로운세션 입력이 아니라 기존 세션을 읽어오는것..
			System.out.println("EmpStateInterceptor state -> "+state);
		}else {
			response.sendRedirect("main");
			return false;
		}
		
		if(state.equals("2") || state.equals("4"))
			return true;
		else {
			response.sendRedirect("main");
			return false;
		}
	}
}
