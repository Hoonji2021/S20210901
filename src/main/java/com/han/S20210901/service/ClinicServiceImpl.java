package com.han.S20210901.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.han.S20210901.dao.ClinicDao;
import com.han.S20210901.model.Clinic;

@Service
public class ClinicServiceImpl implements ClinicService {
	
	@Autowired
	private Searching searching;
	
	@Autowired
	private ClinicDao clinicDao;
	
	@Override
	public int clinicTotal(String search) {
		System.out.println("ClinicServiceImpl clinicTotal(search) Start...");
		int totalCnt = 0;
			 totalCnt = clinicDao.clinicTotal(search); 
		return totalCnt;
	}

	@Override
	public List<Clinic> clinicAll() {
		
		List<Clinic> clinicList = clinicDao.clinicAll();
		
		return clinicList;
	}

	@Override
	public List<Clinic> clinicSearch(String search) {
		System.out.println("ClinicServiceImpl clinicSearch starts...");
		List<Clinic> clinicList = clinicDao.searchRecord(search);
		
		return clinicList;
	}

	@Override
	public int clinicInsert(Clinic newClinic) {
		System.out.println("ClinicServiceImpl clinicInsert starts...");
		
		int result = clinicDao.clinicInsert(newClinic);
		
		return result;
	}

	


}
