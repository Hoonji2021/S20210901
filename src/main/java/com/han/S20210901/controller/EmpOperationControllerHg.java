package com.han.S20210901.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.han.S20210901.service.ClinicService;

@Controller
public class EmpOperationControllerHg {
	
	@Autowired
	private ClinicService clinicSerivice;
	
	@GetMapping("reservationOperation")
	public String empOperation(HttpServletRequest request, Model model) {
		//String sessionId = (String)request.getSession().getAttribute("sessionId");
		String sessionId = "admin";
		model.addAttribute("sessionId",sessionId);
		
		return "reservationOperation";
	}
}
