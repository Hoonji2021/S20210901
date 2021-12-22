package com.han.S20210901.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.han.S20210901.model.Review;
import com.han.S20210901.service.Paging;
import com.han.S20210901.service.ReviewService;

@Controller
public class ReviewControllerJh {
	
	@Autowired
	private ReviewService reviewService;

	@RequestMapping(value = "reviewList")
	public String reviewList(String currentPage, Model model, Review review) {
		
		System.out.println("ReviewControllerJh reviewList() Start...");
		
		//치료후기 총 개수 구하기
		int totalCnt = reviewService.reviewTotal();
		System.out.println("reviewList() totalCnt -> "+totalCnt);
		
		//페이징 totalCnt = 12
		Paging pg = new Paging(totalCnt, currentPage);
		review.setStart(pg.getStart());
		review.setEnd(pg.getEnd());
		
		//모든 리뷰 정보 가져오기
		List<Review> reviewAll = reviewService.reviewAll(review);
		
		model.addAttribute("total", totalCnt);
		model.addAttribute("pg", pg);
		model.addAttribute("reviewList", reviewAll);
		
		return "reviewList";
	}
	
	@RequestMapping(value = "reviewDetail")
	public String reviewDetail(int rnum, Model model) {
		System.out.println("ReviewControllerJh reviewDetail() Start...");
		Review review = reviewService.reviewDetail(rnum);
		
		model.addAttribute("review", review);
		return "reviewDetail";
	}
	
	@RequestMapping(value = "reviewInsertForm")
	public String insertReview() {
		System.out.println("ReviewControllerJh insertReview() Start..");
		return "reviewInsertForm";
	}
	
	@PostMapping(value = "reviewInsertPro")
	public String insertReviewPro(Model model, Review review) {
		System.out.println("ReviewControllerJh insertReviewPro() Start..");
		int result = reviewService.insertReview(review);
		
		model.addAttribute("result", result);
		return "reviewInsertPro";
	}
	@RequestMapping(value = "reviewDelete")
	public String deleteReview(Model model,int rnum) {
		System.out.println("ReviewControllerJh deleteReview() Start...");
		int result = reviewService.deleteReview(rnum);
		
		model.addAttribute("result", result);
		return "reviewDeletePro";
	}
	@RequestMapping(value = "reviewUpdateForm")
	public String reviewUpdate(int rnum, Model model) {
		System.out.println("ReviewControllerJh reviewUpdate() Start...");
		Review review = reviewService.reviewDetail(rnum);
		
		model.addAttribute("review", review);
		
		return "reviewUpdateForm";
	}
	@PostMapping(value = "reviewUpdatePro")
	public String reviewUpdatePro(Review review, Model model) {
		int result = reviewService.reviewUpdate(review);
		
		model.addAttribute("rnum", review.getRnum());
		model.addAttribute("result", result);
		
		return "reviewUpdatePro";
	}
	
	@RequestMapping(value = "reviewSearch")
	public String reviewSearch(String currentPage, Model model, Review review, HttpServletRequest request) {
		System.out.println("ReviewControllerJh reviewSearch() Start...");
		
		int star = Integer.parseInt(request.getParameter("searchOption"));
		System.out.println("star 값 ->"+star);
		
		int searchTotal = 0;
		Paging pg = null;
		List<Review> searchReviewAll = null;
		
		if(star == 0) {
			//리뷰 전체 개수
			searchTotal = reviewService.reviewTotal();
			
			//paging
			pg = new Paging(searchTotal, currentPage);
			review.setStart(pg.getStart());
			review.setEnd(pg.getEnd());
			
			//모든 리뷰 정보 가져오기
			searchReviewAll = reviewService.reviewAll(review);

		}else {
			//해당 별점 리뷰 총 개수 구하기
			searchTotal = reviewService.reviewSearchTotal(star);
			
			//페이징
			pg = new Paging(searchTotal, currentPage);	
			review.setStart(pg.getStart());
			review.setEnd(pg.getEnd());
			review.setStar(star);
			
			//해당 별점 리뷰 정보 가져오기
			searchReviewAll = reviewService.searchReviewAll(review);
			
		}
		
		model.addAttribute("total", searchTotal);
		model.addAttribute("pg", pg);
		model.addAttribute("reviewList", searchReviewAll);
		model.addAttribute("star",star);
		
		//int searchTotal = reviewService.searchTotal(star);
		return "reviewList";
	}
}
