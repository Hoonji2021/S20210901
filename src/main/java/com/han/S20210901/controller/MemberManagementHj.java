package com.han.S20210901.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.han.S20210901.model.MemberManagement;
import com.han.S20210901.service.MemberManagementService;

@Controller
public class MemberManagementHj {
	
	@Autowired
	private MemberManagementService membermanagementService;
	
	@RequestMapping(value =  "MemberManagementMain")    
	public String index(Model model, MemberManagement memberManagement) {
		System.out.println("MemberManagementHj MemberManagement() start...");
		//멤버테이블 회원수 구하기
		/*
		 * int totalCnt = membermanagementService.MemberManagementTotal();
		 * System.out.println("memberManagementList() tatalCnt -> " + totalCnt);
		 */
		
		//리스트 모두 가져오기
		List<MemberManagement> memberManagementList = membermanagementService.MemberManagementAll(memberManagement);
		
		/* model.addAttribute("totalCnt", totalCnt); */
		model.addAttribute("memberList", memberManagementList);
		
		return "membermanagementlist";
			
	}

}
