package com.han.S20210901.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value="clinicWriteForm", method = { RequestMethod.POST, RequestMethod.GET })
	public String clinicWriteForm(HttpServletRequest request, Model model) {
		
		System.out.println("clinicWriteForm model result->"+model.getAttribute("result"));
		return "clinicWrite";
	}
	@RequestMapping(value="clinicWritePro", method = { RequestMethod.POST, RequestMethod.GET })
	public String clinicWritePro(HttpServletRequest request, Model model) {
		int result=0;
	
		System.out.println("EmpOperationController clinicWritePro starts...");
		System.out.println("EmpOperationController clinicWritePro request result->"+request.getParameter("result"));
		Clinic newClinic = new Clinic();
		System.out.println("request.getParameter(ccontent)->"+request.getParameter("ccontent"));
		System.out.println("request.getParameter(empno)->"+request.getParameter("empno"));
		System.out.println("request.getParameter(id)->"+request.getParameter("id"));
		System.out.println("request.getParameter(ctime)->"+request.getParameter("ctime"));
		
		newClinic.setCcontent(request.getParameter("ccontent"));
		newClinic.setEmpno(Integer.parseInt(request.getParameter("empno")));
		newClinic.setId(request.getParameter("id"));
		newClinic.setCtime("");
		
		result = clinicService.clinicInsert(newClinic);
		if(result>0) {
			
			model.addAttribute("result",result);
			return "redirect:clinicOperation";
			
		}
		else
			return "main";
	}
	
}
