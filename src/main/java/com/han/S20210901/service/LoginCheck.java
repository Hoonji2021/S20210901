package com.han.S20210901.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginCheck {
	public LoginCheck() {
		// TODO Auto-generated constructor stub
	}
	
	public int LC(HttpServletRequest request) {
		int state = 0;
		System.out.println("LoginCheck starts...");
		if(request.getSession().getAttribute("sessionState")!=null)
			state = (int)request.getSession().getAttribute("sessionState");
		
		return state;
	}
}
