package com.han.S20210901.dao;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PunchDaoImplHg implements PunchDaoHg {
	
	@Autowired
	SqlSession session;
	
	@Override
	public int punchOn(HttpServletRequest request) {
		System.out.println("PunchDaoImplHg punchOn() starts...");
		String sessionId = (String)request.getSession().getAttribute("sessionId");
		int result = session.insert("hgPunchOn", sessionId);
		return result;
	}

	@Override
	public int punchOff(HttpServletRequest request) {
		System.out.println("PunchDaoImplHg punchOff() starts...");
		String sessionId = (String)request.getSession().getAttribute("sessionId");
		int result = session.insert("hgPunchOff", sessionId);
		return result;
	}

}
