package com.han.S20210901.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.han.S20210901.dao.ClinicDao;
import com.han.S20210901.model.Clinic;
import com.han.S20210901.model.Member;

@Component
public class Searching implements Search {
	
	/****************************************************************************************************/
	//필요한 DAO들.
	
	@Autowired
	private ClinicDao clinicDao;
	/****************************************************************************************************/
	
	
	@Override
	public Member oneFromMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> membersfromMember(String memeberName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Clinic> clientFromClinic(String clientName) {
		List<Clinic> clinicList = clinicDao.searchRecord(clientName);
		return null;
	}

	@Override
	public List<Clinic> fromClinic(Date cdate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Clinic> doctorFromClinic(String ename) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> fromEmp() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
