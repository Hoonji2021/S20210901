package com.han.S20210901.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.han.S20210901.model.Faq;
import com.han.S20210901.model.Notice;
import com.han.S20210901.service.FaqService;
import com.han.S20210901.service.NoticeService;

@Controller
public class MainControllerHg {
	
	@Autowired
	private NoticeService ns;
	@Autowired
	private FaqService fs;
	
	@RequestMapping(value="main",method = { RequestMethod.POST, RequestMethod.GET })
	public String main(HttpServletRequest request, Model model, Faq faq, Notice notice) {
		//HttpSession session = request.getSession();
	//	String sessionId = (String)request.getSession().getAttribute("sessionId");
//		String sessionId = "admin";
		
		//model.addAttribute("sessionId", sessionId);
		  
		  HttpSession session = null;
		  
		  session = request.getSession();
		  System.out.println("request.getParameter(id)->"+request.getParameter("id"));
		  System.out.println("request.getParameter(state)->"+request.getParameter("state"));
		  
		  if(request.getParameter("id")!=null) {
			  session.setAttribute("sessionId", request.getParameter("id"));
			  session.setAttribute("sessionState", request.getParameter("state"));
		  }
		  System.out.println("request.getParameter(state)->"+request.getParameter("state"));
		  
	      System.out.println("id ->>>>>>>>>>>>>> " + request.getParameter("id"));
	      System.out.println("sessionId->"+session.getAttribute("sessionId"));
	      System.out.println("sessionState->"+session.getAttribute("sessionState"));
	      model.addAttribute("sessionId", session.getAttribute("sessionId"));
	      model.addAttribute("sessionState",session.getAttribute("sessionState"));
	      
	      // faq 리스트 가져옴, 서현
	      List<Faq> faqList = fs.fapList(faq);
	      model.addAttribute("faq", faqList);
	      System.out.println();
	      
	      //공지사항 목록 가져옴
	      List<Notice> noticeList = ns.noticeList(notice);
	      model.addAttribute("notice", noticeList);
		
		return "main";
	}
}
