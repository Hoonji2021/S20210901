package com.han.S20210901.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.han.S20210901.service.FaqService;

@RestController
public class FapRestControllerSh {
	
	@Autowired
	private FaqService fs;
	
	@RequestMapping("/faqListResult")
	public String faqListResult(int fnum) {
		// faq ajax
		String faqListResult = fs.faqListResult(fnum);
		System.out.println(fnum);
		System.out.println(faqListResult);
		return faqListResult;
	}
}
