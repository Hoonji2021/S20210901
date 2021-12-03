package com.han.S20210901.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.han.S20210901.dao.MediaDao;
import com.han.S20210901.model.Media;

@Service
public class MediaServiceImpl implements MediaService {
	
	@Autowired
	private MediaDao md;

	@Override
	public int mTotal() {
		return md.mTotal();
	}

	@Override
	public List<Media> mediaList(Media media) {
		System.out.println("service mediaList start");
		return md.mediaList(media);
	}

	@Override
	public Media mediaDetail(int mnum) {
		System.out.println("mediaService mediaDetail start");
		return md.mediaDetail(mnum);
	}

	@Override
	public int mediaInsertPro(Media media) {
		System.out.println("mediaService mediaInsertPro start");
		return md.mediaInsertPro(media);
	}

}
