package com.han.S20210901.dao;

import java.util.List;

import com.han.S20210901.model.Clinic;

public interface ClinicDao {
	
	
	//진료내역 전체 개수 
		int clinicTotal(String search);
		//환자이름 체크해보기
		
		//진료내역 전체 불러오기
		List<Clinic> clinicAll();
		List<Clinic> searchRecord(String clientName);
		
		//진료내역 등록
		int clinicInsert(Clinic newClinic);
}
