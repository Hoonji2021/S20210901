package com.han.S20210901.service;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class LoginInterceptor implements HandlerInterceptor {
		
		//by 지훈/ 로그인이 필요한 url
		public List loginNeed
			= Arrays.asList("/punch*","/empOperation", "/reservationCalendar", "/makeAReservation", "/Member*", "/Emp*", "/updateReservation","/clinic*");
		
		//by 지훈/ 로그인이 필요없는 url
		public List loginNoNeed
			= Arrays.asList("main");
		
		@Override
		public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
			System.out.println("preHandle starts...");
			if(request.getSession().getAttribute("sessionId")==null) {
				//by 지훈, 현재 호출되는 url 확인
				String destUri = request.getRequestURI(); //S20210901/empOperation
				System.out.println("LoginInterceptor destUri -> "+destUri);
				String destQuery = request.getQueryString(); //null
				System.out.println("LoginInterceptor destQuery-> "+destQuery);
				String dest = (destQuery == null) ? destUri : destUri+"?"+destQuery; ///S20210901/empOperation
				System.out.println("LoginInterceptor dest -> "+dest);
				request.getSession().setAttribute("dest", dest);
				response.sendRedirect("login");
				
				return false;
			}
			else {
				return true;
			}
			
		}
}
