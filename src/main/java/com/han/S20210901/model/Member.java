package com.han.S20210901.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Member {
	private String id;
	private String pw;
	private String email;
	private String name;
	private String addr;
	private String phone;
	private Date regdate;
	private int state;

	// emp join용
	private int empno;
	private String dept;
	
	
}