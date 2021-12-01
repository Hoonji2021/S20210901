package com.han.S20210901.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.han.S20210901.model.Oconsult;
import com.han.S20210901.service.OconsultService;
import com.han.S20210901.service.Paging;

@Controller
public class OconsultControllerGh {
	private static final Logger logger = LoggerFactory.getLogger(OconsultControllerGh.class);
	@Autowired
	private OconsultService os;
	@RequestMapping(value = "oconsultList")
	public String oconsultList(Oconsult oconsult, String currentPage, Model model) {
		System.out.println("OconsultController Start list...");
		//공개상담 게시물 총 개수 구하기
		int total = os.total();
		System.out.println("OconsultController total=>" + total);
		// Paging
		Paging pg = new Paging(total, currentPage);
		oconsult.setStart(pg.getStart());
		oconsult.setEnd(pg.getEnd());
		System.out.println("OconsultController oconsultList start......");
		//리스트 모두 가져오기
		List<Oconsult> listOconsult = os.listOconsult(oconsult);
		model.addAttribute("total", 		total);
		model.addAttribute("listOconsult", 	listOconsult);
		model.addAttribute("pg", 			pg);
		return "oconsultList";
	}
	
	// 제목 누르면 나타나는 상세페이지
	@GetMapping(value = "oconsultDetail")
	public String oconsultDetail(int onum, Model model) {
		System.out.println("OconsultController Start oconsultDetail...");
		// 
		int count = os.oconsultCount(onum);
		Oconsult oconsult = os.oconsultDetail(onum);
		model.addAttribute("oconsult", oconsult);
		return "oconsultDetail";
	}
	
	// 수정 폼
	@RequestMapping(value = "oconsultUpdateForm")
	public String oconsultUpdateForm(int onum, Model model) {
		System.out.println("OconsultController Start oconsultUpdateForm...");
		Oconsult oconsult = os.oconsultDetail(onum);
		model.addAttribute("oconsult", oconsult);
		return "oconsultUpdateForm";
	}
	
	@PostMapping(value = "oconsultUpdate")
	public String oconsultUpdate(Oconsult oconsult, Model model) {
		int k = os.oconsultUpdate(oconsult);
		System.out.println("os.update(oconsult) k-->"+k);
		return "forward:oconsultList"; //똑같은 컨트롤러로 가서 메소드실행/ redirect-model은 안가져감 ,forward-model같이 가져감
	}

}
