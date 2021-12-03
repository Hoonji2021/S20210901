package com.han.S20210901.service;

import javax.servlet.http.HttpServletRequest;

public interface PunchServiceHg {

	int punchOn(HttpServletRequest request);
	
	int punchOff(HttpServletRequest request);
	

}
