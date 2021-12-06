package com.han.S20210901.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.han.S20210901.model.Clinic;
import com.han.S20210901.service.Search;

@Repository
public class ClinicDaoImpl implements ClinicDao {
	
	@Autowired
	private Search searching;
	
	@Autowired
	private SqlSession session;
	@Override
	public int clinicTotal(String search) {
		System.out.println("ClinicDaoImpl clinicTotal starts...");
		int totCnt = 0 ;
		System.out.println("ClinicDaoImpl search->"+search);
		if(search==null) {
			System.out.println("검색어search=>"+search);
			totCnt = session.selectOne("HGclinicTotCnt");
		}
		else {
			System.out.println("!!!!!!!!!!!!!!!!!test1");
			if(session.selectOne("HGclinicClientNameTotCnt",search)!=null)
			{	
				System.out.println("검색어search=>"+search);
				totCnt = session.selectOne("HGclinicClientNameTotCnt",search);
			}
			System.out.println("ClinicDaoImpl clinicTotal totCnt->"+totCnt);
			System.out.println("!!!!!!!!!!!!!!!!!test2");
		}
		System.out.println("ClinicDaoImpl clinicTotal totCnt->"+totCnt);
		return totCnt;
	}

	@Override
	public List<Clinic> clinicAll() {
		List<Clinic> clinicList = session.selectList("HGclinicList");
		return clinicList;
	}

	@Override
	public List<Clinic> searchRecord(String clientName) {
		System.out.println("ClinicDaoImpl searchRecord starts...");
		
		List<Clinic> clinicList =null;
		
		if(session.selectList("HGclientNameClinicList",clientName)!=null)
			clinicList = session.selectList("HGclientNameClinicList",clientName);
		
		
		return clinicList;
	}

}
