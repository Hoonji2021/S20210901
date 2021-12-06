package com.han.S20210901.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.han.S20210901.model.Clinic;
import com.han.S20210901.service.ClinicService;
import com.han.S20210901.service.Paging;

@Controller
public class EmpOperationControllerHg {
	
	@Autowired
	private ClinicService clinicService;
	
	
	@GetMapping("empOperation")
	public String empOperation(HttpServletRequest request, Model model) {
		//String sessionId = (String)request.getSession().getAttribute("sessionId");
//		String sessionId = "admin";
//		model.addAttribute("sessionId",sessionId);
		return "empOperation";
	}
	@GetMapping("clinicOperation")
	public String clinicOperation(Clinic clinic, String currentPage, Model model, HttpServletRequest request) {
		
		System.out.println("EmpOperationControllerHg clinicOperation starts...");
		System.out.println("Parameter currentPage-> "+currentPage);
		System.out.println("EmpOperationControllerHg clinicOperation request.getParameter(search)->"+request.getParameter("search"));
		
		String search = (String) request.getParameter("search");
		List<Clinic> clinicList = null;
		
		int totCnt = clinicService.clinicTotal(search);
		
		if(search==null) clinicList = clinicService.clinicAll();
		else clinicList = clinicService.clinicSearch(search);
		Paging pg = new Paging(totCnt, currentPage);
		
		model.addAttribute("clinicList",clinicList);
		model.addAttribute("totalCnt", totCnt);
		model.addAttribute("pg", pg);
		
		
		return "clinicOperation";
	}
	
	
}
