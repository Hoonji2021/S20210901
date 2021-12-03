package com.han.S20210901.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PunchHg {
	private int empno;
	private Date pundate;
	private String startTime;
	private String endTime;
	
	//조회용
	private String ename;
	private String dept;
}
