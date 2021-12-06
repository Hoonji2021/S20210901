package com.han.S20210901.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.han.S20210901.model.Emp;
@Repository
public class EmpDaoImpl implements EmpDao {
	@Autowired
	SqlSession session;
	
	@Override
	public Emp selectEmp(String id) {
		Emp emp = session.selectOne("HGempSelect",id);
		return emp;
	}

}
