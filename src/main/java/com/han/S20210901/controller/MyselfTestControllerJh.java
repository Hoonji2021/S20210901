package com.han.S20210901.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.han.S20210901.model.MyselfTest;

@Controller
public class MyselfTestControllerJh {

	@GetMapping(value = "myselfTest")
	public String myselfTest() {
		
		return "myselfTest";
	}
	
	@PostMapping(value = "TestResult")
	public String TestResult(MyselfTest myTest, Model model) {
		//자가진단 점수 합산
		int testTotal = myTest.getMyTest1()+myTest.getMyTest2()+myTest.getMyTest3()+myTest.getMyTest4()+myTest.getMyTest5()+
						myTest.getMyTest6()+myTest.getMyTest7()+myTest.getMyTest8()+myTest.getMyTest9()+myTest.getMyTest10();
		
		System.out.println("TestResult testTotal ->"+testTotal);
		model.addAttribute("total", testTotal);
		model.addAttribute("myTest", myTest);
		
		return "myselfTestResult";
	}
	
	@RequestMapping(value = "myselfTest2")
	public String myselfTest2(MyselfTest myTest, Model model) {
		System.out.println("PconsultControllerJh myselfTest2() Start...");
			
		return "myselfTest2";
	}
	
	                     
	@GetMapping(value = "myselfTest3")
	public String myselfTest3(MyselfTest myTest, Model model) {
		System.out.println("PconsultControllerJh myselfTest3() Start...");
		
		return "myselfTest3";
	}
}
