package com.han.S20210901.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.han.S20210901.dao.OconsultDao;
import com.han.S20210901.model.Oconsult;

@Service
public class OconsultServiceImpl implements OconsultService {
	@Autowired
	private OconsultDao od;

	@Override
	public int total() {
		System.out.println("OconsultServiceImpl Start total..." );
		int totCnt = od.total();
		System.out.println("OconsultServiceImpl total totCnt->"+totCnt);
		return totCnt;
	}

	@Override
	public List<Oconsult> listOconsult(Oconsult oconsult) {
		List<Oconsult> oconsultList = null;
		System.out.println("OconsultServiceImpl listOconsult Start...");
		oconsultList = od.listOconsult(oconsult);
		System.out.println("OconsultServiceImpl listOconsult listOconsult.size()->" + oconsultList.size());
		
		return oconsultList;
	}

	@Override
	public Oconsult oconsultDetail(int onum) {
		System.out.println("OconsultServiceImpl oconsultDetail ...");
		Oconsult oconsult = null;
		oconsult = od.oconsultDetail(onum);
		return oconsult;
	}

	@Override
	public int oconsultUpdate(Oconsult oconsult) {
		System.out.println("oconsultServiceImpl oconsultUpdate ...");
		int kkk = 0;
		kkk = od.oconsultUpdate(oconsult);
		return kkk;
	}

	@Override
	public int oconsultCount(int onum) {
		System.out.println("oconsultServiceImpl oconsultCount ...");
		int count = od.oconsultCount(onum);
		return count;
	}

	

}
