package com.han.S20210901.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.han.S20210901.model.Oconsult;

@Repository
public class OconsultDaoImpl implements OconsultDao {
	@Autowired
	private SqlSession session;
	@Override
	public int total() {
		int tot = 0;
		System.out.println("OconsultDaoImpl total Start ...");
		try {
			//    Mapper    ------>   Map ID (Naming Rule)
			tot = session.selectOne("ghOconsultTotal");
		} catch (Exception e) {
			System.out.println("OconsultDaoImpl total Exception->"+e.getMessage());
		}
		
		return tot;
	}
	@Override
	public List<Oconsult> listOconsult(Oconsult oconsult) {
		List<Oconsult> oconsultList = null;
		System.out.println("OconsultDaoImpl listOconsult Start ...");
		try {
			oconsultList = session.selectList("ghOconsultListAll", oconsult);
			
		} catch (Exception e) {
			System.out.println("OconsultDaoImpl listOconsult Exception->"+e.getMessage());
		}
		return oconsultList;
	}
	@Override
	public Oconsult oconsultDetail(int onum) {
		System.out.println("OconsultDaoImpl oconsultDetail start..");
		Oconsult oconsult = new Oconsult();
		try {
			oconsult = session.selectOne("ghOconsultSelOne", onum);
			System.out.println("OconsultDaoImpl oconsultDetail getOtitle->"+oconsult.getOtitle());
		} catch (Exception e) {
			System.out.println("OconsultDaoImpl oconsultDetail Exception->"+e.getMessage());
		}
		return oconsult;
	}
	@Override
	public int oconsultUpdate(Oconsult oconsult) {
		System.out.println("OconsultDaoImpl oconsultUpdate start...");
		int k = 0;
		try {
			k = session.update("ghOconsultUpdate", oconsult);
		} catch (Exception e) {
			System.out.println("OconsultDaoImpl oconsultUpdate Exception->"+e.getMessage());
		}
		return k;
	}
	@Override
	public int oconsultCount(int onum) {
		System.out.println("OconsultDaoImpl oconsultCount start...");
		int count = 0;
		try {
			count = session.update("ghOconsultCount", onum);
		} catch (Exception e) {
			System.out.println("OconsultDaoImpl oconsultUpdate Exception->"+e.getMessage());
		}
		return count; 
	}
	@Override
	public int oconsultInsert(Oconsult oconsult) {
		System.out.println("OconsultDaoImpl oconsultCount start...");
		int result = 0;
		try {
			result = session.insert("ghOconsultInsert", oconsult);
		} catch (Exception e) {
			System.out.println("OconsultDaoImpl oconsultInsert Exception->"+e.getMessage());
		}
		return result;
	}
	@Override
	public int oconsultDelete(int onum) {
		System.out.println("OconsultDaoImpl oconsultDelete start... ");
		int result = 0;
		try {
			result = session.delete("ghOconsultDelete", onum);
		} catch (Exception e) {
			System.out.println("OconsultDaoImpl delete Exception->"+e.getMessage());
		}
		return result;
		
		
		
		return 0;
	}


}
