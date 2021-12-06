package com.han.S20210901.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.han.S20210901.model.Media;

@Repository
public class MediaDaoImpl implements MediaDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public int mTotal() {
		return session.selectOne("mTotalSh");
	}

	@Override
	public List<Media> mediaList(Media media) {
		System.out.println("dao mediaList start");
		return session.selectList("mediaListSh", media);
	}

	@Override
	public Media mediaDetail(int mnum) {
		System.out.println("mediaDao mediaDetail start");
		return session.selectOne("mediaDetailSh", mnum);
	}
}
