package com.han.S20210901.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.han.S20210901.model.Member;
import com.han.S20210901.service.FindService;

// 아이디, 비번찾기
@Controller
public class FindControllerSh {
	
	@Autowired
	private FindService fs;
	
	@RequestMapping(value = "findId")
	public String findId() {
		return "findId";
	}
	
	@RequestMapping(value = "findIdResult")
	public String findId(Member member, Model model) {
		System.out.println("FindIdController findId start");
		String fid = null;
		fid = fs.findId(member);
		System.out.println("fid-> " + fid);
		model.addAttribute("fid", fid);
		return "findIdResult";
	}
	
	@RequestMapping(value = "findPw")
	public String findPw() {
		return "findPw";
	}
	
	@RequestMapping(value = "findPwResult")
	public String findPwResult(Member member, Model model) {
		String fpw = null;
		fpw = fs.findPw(member);
		System.out.println("email-> " + member.getEmail());
		model.addAttribute("fpw", fpw);
		System.out.println("fpw-> " + fpw);
		return "findPwResult";
	}
}
