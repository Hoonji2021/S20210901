package com.han.S20210901.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.han.S20210901.model.MemberManagement;
import com.han.S20210901.service.MemberManagementService;
import com.han.S20210901.service.Paging;

@Controller
public class MemberManagementHj {
	
	@Autowired
	private MemberManagementService membermanagementService;
	
	@RequestMapping(value =  "MemberManagementMain")    
	public String index(String currentPage, Model model, String id, MemberManagement memberManagement) {
		System.out.println("MemberManagementHj MemberManagement() start...");
		//멤버테이블 회원수 구하기
		
		 int totalCnt = membermanagementService.MemberManagementTotal();
		 System.out.println("memberManagementList() tatalCnt -> " + totalCnt);
		 
		//페이징 totalCnt = 12,1
		Paging pg = new Paging(totalCnt, currentPage);
		
		memberManagement.setStart(pg.getStart());
		memberManagement.setEnd(pg.getEnd());
		//리스트 모두 가져오기
		List<MemberManagement> memberManagementList = membermanagementService.MemberManagementAll(memberManagement);
		
		/* model.addAttribute("totalCnt", totalCnt); */
		model.addAttribute("memberList", memberManagementList);
		
		model.addAttribute("totalCnt", totalCnt);
		model.addAttribute("id", id);
		model.addAttribute("pg", pg);
		
		return "membermanagementlist";
			
	}
		@GetMapping(value = "memberManagementDelete")
		public String memberManagementDelete(String id, Model model) {
			System.out.println("MemberManagementHJ memberManagementDelete Start...");
			int result = membermanagementService.memberManagementDelete(id);
			System.out.println("memberManagementDelete result->" + result);
			model.addAttribute("result", result);
			
			return "memberManagementDeletePro";

		}

}
