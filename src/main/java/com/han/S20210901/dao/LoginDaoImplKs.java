package com.han.S20210901.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.han.S20210901.model.Member;

@Repository
public class LoginDaoImplKs implements LoginDaoKs {
	// JDBC = DataSource, JPA = EntityManager, MyBatis = SqlSession
	@Autowired
	private SqlSession session;

	public List<Member> getIdPw(String id) {
		System.out.println("ReservationDaoImpl getIdPw() start...");

		List<Member> data = null;
		try {
			data = session.selectList("ksGetIdPw", id);
			System.out.println("state!!!!!!!!!!!!!!!!!!!!!!"+data.get(0).getState());
		} catch (Exception e) {
			System.out.println("ReservationDaoImpl getIdPw() Error ->>>>> " + e.getMessage());
		}
		return data;
	}

}
