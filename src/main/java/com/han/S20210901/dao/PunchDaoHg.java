package com.han.S20210901.dao;

import javax.servlet.http.HttpServletRequest;

public interface PunchDaoHg {

	int punchOn(HttpServletRequest request);

	int punchOff(HttpServletRequest request);

}
