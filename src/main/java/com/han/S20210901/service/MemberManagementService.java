package com.han.S20210901.service;

import java.util.List;

import com.han.S20210901.model.MemberManagement;

public interface MemberManagementService {
	
	int MemberManagementTotal();
	
	List<MemberManagement> MemberManagementAll(MemberManagement memberManagement);
}
