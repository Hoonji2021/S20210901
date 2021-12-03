package com.han.S20210901.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.han.S20210901.model.Media;
import com.han.S20210901.service.MediaService;

@Controller
public class MediaControllerSh {
	
	@Autowired
	private MediaService ms;
	
	@RequestMapping(value = "mediaList")
	public String mediaList(Media media, Model model) {
		// 강연방송 목록 가져옴
		System.out.println("MediaController mediaList start");
		// media 총 갯수
		int mTotal = ms.mTotal();
		// 
		List<Media> mediaList = null;
		mediaList = ms.mediaList(media);
		model.addAttribute("mediaList", mediaList);
		model.addAttribute("mTotal", mTotal);
		return "mediaList";
	}
	
	@RequestMapping(value = "mediaDetail")
	public String mediaDetail(int mnum, Model model) {
		System.out.println("mediaController mediaDetail start");
		Media media = ms.mediaDetail(mnum);
		return "mediaDetail";
	}
	
	@RequestMapping(value = "mediaInsertForm")
	public String mediaInsertForm() {
		return "mediaInsertForm";
	}
	
	@RequestMapping(value = "mediaInsertPro")
	public String mediaInsertPro(Media media, Model model) {
		System.out.println("mediaController mediaInsertPro start");
		int result = 0;
		result = ms.mediaInsertPro(media);
		model.addAttribute("result", result);
		return "mediaInsertPro";
	}
	
}
