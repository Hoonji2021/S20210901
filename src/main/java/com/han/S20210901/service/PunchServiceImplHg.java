package com.han.S20210901.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.han.S20210901.dao.PunchDaoHg;


@Service
public class PunchServiceImplHg implements PunchServiceHg {
	
	@Autowired
	private PunchDaoHg punchDaoHg;
	

	@Override
	public int punchOn(HttpServletRequest request) {
		System.out.println("PunchServiceImplHg punchOn() Starts...");
		int result = punchDaoHg.punchOn(request);
		return result;
	}


	@Override
	public int punchOff(HttpServletRequest request) {
		System.out.println("PunchServiceImplHg punchOff() Starts...");
		int result = punchDaoHg.punchOff(request);
		
		return result;
	}

}
