package com.han.S20210901.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class MemberControllerGh {

	
	@RequestMapping(value = "memberJoin")
	public String memberJoin(Model model) {
		System.out.println("MemberControllerGh memberJoin Start... ");
		
		return "memberJoin";
	}
}
