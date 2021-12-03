package com.han.S20210901.service;

import java.util.List;

import com.han.S20210901.model.Media;

public interface MediaService {
	int mTotal();
	List<Media> mediaList(Media media);
	Media mediaDetail(int mnum);

}
