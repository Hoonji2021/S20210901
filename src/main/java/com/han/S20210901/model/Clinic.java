package com.han.S20210901.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Clinic {
	private int cnum;
	private int empno;
	private String id;
	private Date cdate;
	private String ctime;
	private String ccontent;
}
