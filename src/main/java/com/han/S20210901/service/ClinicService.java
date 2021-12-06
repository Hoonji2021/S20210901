package com.han.S20210901.service;

import java.util.List;

import com.han.S20210901.model.Clinic;

public interface ClinicService {
	//진료내역 전체 개수
	int clinicTotal(String search);
	
	//진료내역 전체 불러오기
	List<Clinic> clinicAll();
	// 진료내역 검색
	List<Clinic> clinicSearch(String search);
	
	
	
}
