package com.han.S20210901.service;

import java.util.Date;
import java.util.List;

import com.han.S20210901.model.Clinic;
import com.han.S20210901.model.Member;

public interface Search {
	
	// 회원 테이블에서 검색하는 것들.
	Member oneFromMember(String id); // 회원 아이디로 회원 한명만 조회
	List<Member> membersfromMember(String memberName); // 회원 이름으로 회원 명단 조회 

	// 진료 내역에서 검색하는 것들
	List<Clinic> clientFromClinic(String clientName);
	List<Clinic> fromClinic(Date cdate);
	List<Clinic> doctorFromClinic(String ename);
	
	List<Member> fromEmp();

}
