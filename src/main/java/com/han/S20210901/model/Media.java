package com.han.S20210901.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Media {
	private int mnum;
	private int mcount;
	private String mtitle;
	private String link;
	private Date mdate;
	private String msumnail;
}
