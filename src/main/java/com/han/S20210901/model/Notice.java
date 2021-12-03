package com.han.S20210901.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Notice {
	private int nnum;
	private String ndate;
	private int ncount;
	private String ncontent;
	private String ntitle;
	private String nimg;
	
	// 페이징
	private int nTotal;				private int nRowPage   = 10;
	private int nStartPage;			private int nPageBlock = 10;
	private int nEndPage;			private int nStart;
	private int nCurrentPage = 1;	private int nEnd;
}
