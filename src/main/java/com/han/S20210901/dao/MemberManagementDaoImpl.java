package com.han.S20210901.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.han.S20210901.model.MemberManagement;

@Repository
public class MemberManagementDaoImpl implements MemberManagementDao {
	
	@Autowired
	private SqlSession session;
	
	
	@Override
	public int memberManagementTotal() {
		System.out.println("MemberManagementDaoImpl memberManagementTotal() Start...");
		int totalCnt = session.selectOne("HjMemberManagementCnt");
		return totalCnt;
	}

	@Override
	public List<MemberManagement> MemberManagementALL(MemberManagement memberManagement) {
		System.out.println("MemberManagementDaoImpl MemberManagementALL() Start...");
		List<MemberManagement> memberManagementList = session.selectList("HjMemberManagementList", memberManagement);
		
		return memberManagementList;
	}

}
