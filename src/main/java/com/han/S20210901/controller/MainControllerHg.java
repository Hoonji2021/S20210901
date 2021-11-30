package com.han.S20210901.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainControllerHg {
	@RequestMapping(value = "main", method = { RequestMethod.POST, RequestMethod.GET })
	public String main(HttpServletRequest request, Model model) {
		// HttpSession session = request.getSession();
		// String sessionId = (String)request.getSession().getAttribute("sessionId");
//		String sessionId = "admin";

		// model.addAttribute("sessionId", sessionId);

		HttpSession session = null;

		session = request.getSession();

		if (request.getParameter("id") != null) {
			session.setAttribute("sessionId", request.getParameter("id"));
		}

		System.out.println("id ->>>>>>>>>>>>>> " + request.getParameter("id"));
		System.out.println("sessionId->" + session.getAttribute("sessionId"));
		model.addAttribute("sessionId", session.getAttribute("sessionId"));

		return "main";
	}
}
