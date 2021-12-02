package com.han.S20210901.dao;

import java.util.List;

import com.han.S20210901.model.MemberManagement;

public interface MemberManagementDao {
	
	int memberManagementTotal();
	
	List<MemberManagement> MemberManagementALL(MemberManagement memberManagement);

	int memberManagementDelete(String id);
	
}
