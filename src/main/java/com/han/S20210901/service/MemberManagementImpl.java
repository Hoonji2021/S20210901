package com.han.S20210901.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.han.S20210901.dao.MemberManagementDao;
import com.han.S20210901.model.MemberManagement;

@Service
public class MemberManagementImpl implements MemberManagementService {

	@Autowired
	private MemberManagementDao memberManagementDao;
	
	@Override
	public int MemberManagementTotal() {
		System.out.println("MemberManagementServiceImpl MemberManagementTotal() Strat...");
		int totalCnt = memberManagementDao.memberManagementTotal();
		return totalCnt;
	}

	@Override
	public List<MemberManagement> MemberManagementAll(MemberManagement memberManagement) {
		System.out.println("MemberManagementServiceImpl MemberManagementAll() Start...");
		List<MemberManagement> memberManagementList = memberManagementDao.MemberManagementALL(memberManagement);
		return memberManagementList;
	}

}
